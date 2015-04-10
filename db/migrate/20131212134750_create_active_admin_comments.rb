class CreateActiveAdminComments < ActiveRecord::Migration
  def self.up
    create_table :active_admin_comments do |t|
      t.string :namespace
      t.text   :body
      t.string :resource_id,   :null => false
      t.string :resource_type, :null => false
      t.references :artist, :polymorphic => true
      t.timestamps
    end
    add_index :active_admin_comments, [:namespace]
    add_index :active_admin_comments, [:artist_type, :artist_id]
    add_index :active_admin_comments, [:resource_type, :resource_id]
  end

  def self.down
    drop_table :active_admin_comments
  end
end
