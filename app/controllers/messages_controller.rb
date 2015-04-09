class MessagesController < ApplicationController

  def create
    msg = Message.new(permitted_params)
    if (msg.save)
      render partial:'conversations/message_block', locals:{msg: msg}
    else
      p msg.errors
      head 500
    end
  end

  def permitted_params
    params.require(:message).permit(:conversation_id, :content).merge(author: current_user)
  end
end