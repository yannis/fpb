FactoryGirl.define do
  # define an incremental username
  sequence :name do |n|
    n.to_s
  end

  sequence :integer do |n|
    n
  end

  factory :author do
    first_name{ Faker::Name.first_name }
    last_name{ Faker::Name.last_name }
    email { Faker::Internet.email }
  end

  factory :news do
    title{ Faker::Lorem.sentence }
    content{ Faker::Lorem.paragraph }
  end

  factory :committee_member do
    first_name{ Faker::Name.first_name }
    last_name{ Faker::Name.last_name }
    email { Faker::Internet.email }
    title{ "Dr" }
  end
end
