class RenameConversationName < ActiveRecord::Migration
  def change
    rename_column :conversations, :name, :subject
  end
end
