class Topic < ActiveRecord::Base
  include Visibility
  has_many :conversations

  def to_param
    [id, name.parameterize].join("-")
  end
end