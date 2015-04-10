class RenameAuthorsToArtists < ActiveRecord::Migration
  def change
    rename_table('authors', 'artists')
    rename_column('artworks', 'author_id', 'artist_id')
  end
end
