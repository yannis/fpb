require 'spec_helper'

describe Artwork do
  let(:picture){create :artwork, :as_picture}
  let(:poem){create :artwork, :as_text}
  it { should belong_to :artist}
  it { should validate_presence_of :title }
  it { should validate_presence_of :artist_id }

  it {expect(picture).to be_valid_verbose}
  it {expect(picture.picture).to_not be_nil}
  it {expect(picture.content).to be_nil}
  it {expect(poem).to be_valid_verbose}
  it {expect(poem.picture).to_not be_nil}
  it {expect(poem.content).to_not be_nil}

  describe "pictures" do
    before do
      picture.save
      poem.save
    end
    it {expect(Artwork.all).to match_array [picture, poem]}
    it {expect(Artwork.pictures).to match_array [picture]}
    it {expect(Artwork.text).to match_array [poem]}
  end
end
