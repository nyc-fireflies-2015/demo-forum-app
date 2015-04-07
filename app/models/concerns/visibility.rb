module Visibility extend ActiveSupport::Concern
  
  def is_in_draft
    return !is_published 
  end

  def is_private
    return !is_public
  end

  module ClassMethods
    def drafts
      where(is_published: false)
    end

  end
end