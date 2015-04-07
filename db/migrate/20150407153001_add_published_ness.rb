class AddPublishedNess < ActiveRecord::Migration
  def change
    add_column :topics, :is_published, :boolean
    add_column :conversations, :is_published, :boolean
    add_column :messages, :is_published, :boolean
  end
end
