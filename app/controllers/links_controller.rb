class LinksController < ApplicationController
  def index
    @title = "Links"
    @links = Link.all
  end
end
