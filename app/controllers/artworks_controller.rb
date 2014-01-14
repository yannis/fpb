class ArtworksController < ApplicationController
  def index
    @title = "Artwork gallery"
    @artworks = Artwork.includes(:author).order("authors.last_name ASC").all.group_by(&:author)
  end
end
