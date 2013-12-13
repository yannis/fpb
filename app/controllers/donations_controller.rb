class DonationsController < ApplicationController
  def index
    @donations = Donation.all
    @title = "Donations"
  end
end
