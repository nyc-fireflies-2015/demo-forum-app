class ConversationsController < ApplicationController

  def show
    @conv = Conversation.find(params[:id])
  end
end