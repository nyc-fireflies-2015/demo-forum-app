class AddPublicNess < ActiveRecord::Migration
  def change
    add_column :topics, :is_public, :boolean
    add_column :conversations, :is_public, :boolean
    add_column :messages, :is_public, :boolean
  end
end
