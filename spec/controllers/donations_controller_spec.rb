require 'spec_helper'

describe DonationsController do

  context "GET 'index'" do
    before {get "index"}
    it {expect(response).to be_success}
  end
end
