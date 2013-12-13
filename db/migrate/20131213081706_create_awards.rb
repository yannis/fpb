class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.string :laureate
      t.string :title
      t.date :awarded_on

      t.timestamps
    end
  end
end
