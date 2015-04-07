class User < ActiveRecord::Base
  has_many :threads, foreign_key: :author_id
  has_many :messages, foreign_key: :author_id
  has_secure_password
end