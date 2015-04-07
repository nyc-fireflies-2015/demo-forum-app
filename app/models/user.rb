class User < ActiveRecord::Base
  has_many :conversations, foreign_key: :author_id
  has_many :messages, foreign_key: :author_id
  has_secure_password
end