class Topic < ActiveRecord::Base
  has_many :message_threads
end