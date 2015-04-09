class ConversationsController < ApplicationController

  def show
    @conv = Conversation.find(params[:id])
    @message = Message.new
  end
end