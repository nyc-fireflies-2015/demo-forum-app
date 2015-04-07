class Message < ActiveRecord::Base
  belongs_to :message_thread
  belongs_to :author, class_name: 'User', foreign_key: :author_id
end