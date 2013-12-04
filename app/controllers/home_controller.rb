class HomeController < ApplicationController
  def index
  end

  def award
    @title = "International Paul Brönnimann Award"
  end

  def donations
    @title = "Donations"
  end

  def links
    @title = "Links"
  end
end
