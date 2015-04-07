class Message < ActiveRecord::Base
  include Visibility

  belongs_to :conversation
  belongs_to :author, class_name: 'User', foreign_key: :author_id

  delegate :username, to: :author, prefix: true

end