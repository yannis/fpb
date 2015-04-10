class ArtworksController < ApplicationController
  def index
    @title = "Artwork gallery"
    @grouped_pictures = Artwork.includes(:artist).where("artworks.picture_file_size IS NOT NULL").order("artists.last_name ASC").group_by(&:artist)
    @grouped_poems = Artwork.includes(:artist).where("artworks.picture_file_size IS NULL AND artworks.content IS NOT NULL").order("artists.last_name DESC").group_by(&:artist)
  end
end
