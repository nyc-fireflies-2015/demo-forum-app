class Topic < ActiveRecord::Base
  include Visibility
  has_many :conversations
  validates :name, presence: true

  def to_param
    [id, name.parameterize].join("-")
  end
end