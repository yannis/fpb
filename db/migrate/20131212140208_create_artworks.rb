class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :title
      t.text :content
      t.date :executed_on
      t.date :received_on
      t.belongs_to :artist
      t.attachment :picture

      t.timestamps
    end

    add_index :artworks, :artist_id
  end
end
