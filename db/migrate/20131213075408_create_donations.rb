class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.string :name
      t.string :location
      t.date :donated_on

      t.timestamps
    end
  end
end
