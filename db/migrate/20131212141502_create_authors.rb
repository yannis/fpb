class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :affiliation
      t.attachment :portrait

      t.timestamps
    end
    add_index :authors, :last_name
  end
end
