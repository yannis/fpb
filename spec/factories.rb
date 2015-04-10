FactoryGirl.define do
  # define an incremental username
  sequence :name do |n|
    n.to_s
  end

  sequence :integer do |n|
    n
  end

  factory :artist do
    first_name{ Faker::Name.first_name }
    last_name{ Faker::Name.last_name }
    email { Faker::Internet.email }
  end

  factory :news do
    title{ Faker::Lorem.sentence }
    content{ Faker::Lorem.paragraph }
  end

  factory :council_member do
    first_name{ Faker::Name.first_name }
    last_name{ Faker::Name.last_name }
    email { Faker::Internet.email }
    title{ "Dr" }
  end

  factory :article do
    sequence(:title) { |n| "Title #{n}" }
    comments_allowed false
    styles           "styles here"

    factory :unpublished_article do
      published false
    end

    factory :article_with_comments do
      ignore do
        comments_count 3
      end

      after(:create) do |article, evaluator|
        FactoryGirl.create_list(:comment, evaluator.comments_count, :article => article)
      end
    end
  end

  factory :artwork do
    association :artist
    title {Faker::Lorem.sentence(2)}

    trait :as_picture do
      picture { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'fixtures', 'rails.png'), 'image/png') }
    end

    trait :as_text do
      content {Faker::Lorem.sentence(3)}
    end
  end
end
