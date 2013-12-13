class CreateCommitteeMembers < ActiveRecord::Migration
  def change
    create_table :committee_members do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :function
      t.string :affiliation
      t.attachment :portrait

      t.timestamps
    end
  end
end
