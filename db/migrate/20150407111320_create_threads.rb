class CreateThreads < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.integer :topic_id
      t.string :name
      t.integer :author_id
      t.timestamps
    end
  end
end
