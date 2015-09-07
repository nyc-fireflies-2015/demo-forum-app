class ConversationsController < ApplicationController
  skip_before_filter :ensure_current_user, only: [:index, :show]

  def show
    @conv = Conversation.find(params[:id])
    @message = Message.new
  end
end