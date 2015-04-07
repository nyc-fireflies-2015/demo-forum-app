class SessionsController < ApplicationController
  skip_before_filter :ensure_current_user
  def new
    # This action is not needed.
    # Just having the view is enough.
  end

  def create
    user = User.find_by(username: params[:username])
    puts 'User not located' if !user
    if user && user.authenticate(params[:password])
      puts "We logged in as user #{user.id}"
      session[:user_id] = user.id
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    session.destroy if session
    redirect_to root_path
  end  
end