class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :content
      t.date :published_on

      t.timestamps
    end
    add_index :news, :published_on
  end
end
