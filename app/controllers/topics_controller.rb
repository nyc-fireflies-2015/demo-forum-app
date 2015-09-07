class TopicsController < ApplicationController
  skip_before_filter :ensure_current_user, only: [:index, :show]
  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])
    @topic.update(topic_params)
    if @topic.save
      redirect_to topic_path(@topic)
    else
      render :edit
    end

  end

  private

  def topic_params
    params.require(:topic).permit(:name)
  end
end