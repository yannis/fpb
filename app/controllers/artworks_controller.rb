class ArtworksController < ApplicationController
  def index
    @title = "Artwork gallery"
    @grouped_pictures = Artwork.includes(:author).where("artworks.picture_file_size IS NOT NULL").order("authors.last_name ASC").group_by(&:author)
    @grouped_poems = Artwork.includes(:author).where("artworks.picture_file_size IS NULL AND artworks.content IS NOT NULL").order("authors.last_name DESC").group_by(&:author)
  end
end
