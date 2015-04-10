require 'spec_helper'

describe ArtistsController do
  let(:artist){create :artist}
  describe "GET 'show'" do
    it "returns http success" do
      get 'show', id: artist.id
      response.should be_success
    end
  end

end
