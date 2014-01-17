class DonationsController < ApplicationController
  def index
    @title = "Donations"
    @donations = Donation.all
  end
end
