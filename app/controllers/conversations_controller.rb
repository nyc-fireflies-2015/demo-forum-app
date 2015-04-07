class ConversationsController < ApplicationController

  def show
    @thread = Conversation.find(params[:id])
  end
end