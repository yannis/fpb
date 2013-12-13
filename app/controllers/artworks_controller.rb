class ArtworksController < ApplicationController
  def index
    @title = "Artwork gallery"
    @artworks = Artwork.all
  end
end
