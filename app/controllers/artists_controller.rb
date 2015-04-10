class ArtistsController < ApplicationController
  def show
    @artist = Artist.find params[:id]
    @title = @artist.full_name
    @pictures = @artist.artworks.pictures.order(received_on: :desc)
    @poems = @artist.artworks.text.order(received_on: :desc)
  end
end
