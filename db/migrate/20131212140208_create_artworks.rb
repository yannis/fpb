class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :title
      t.text :content
      t.date :executed_on
      t.date :received_on
      t.belongs_to :author
      t.attachment :picture

      t.timestamps
    end
  end
end
