class Topic < ActiveRecord::Base
  has_many :conversations

  def to_param
    [id, name.parameterize].join("-")
  end
end