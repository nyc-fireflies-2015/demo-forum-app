class MessageThreadsController < ApplicationController

  def show
    @thread = MessageThread.find(params[:id])
  end
end