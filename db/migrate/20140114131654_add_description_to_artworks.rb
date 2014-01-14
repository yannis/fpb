class AddDescriptionToArtworks < ActiveRecord::Migration
  def change
    add_column :artworks, :description, :text
  end
end
