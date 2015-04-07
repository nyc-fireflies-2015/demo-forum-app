class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :message_thread_id
      t.integer :author_id
      t.text :content
      t.timestamps
    end
  end
end
