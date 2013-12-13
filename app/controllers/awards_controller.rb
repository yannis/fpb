class AwardsController < ApplicationController
  def index
    @title = "International Paul Brönnimann Award"
    @awards = Award.order("awards.awarded_on DESC")
  end
end
