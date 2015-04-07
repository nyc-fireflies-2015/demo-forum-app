class MessageThread < ActiveRecord::Base
  belongs_to :topic
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  has_many :messages
end