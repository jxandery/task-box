class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by(email_address: session_params[:email_address])
    if @user && @user.authenticate(session_params[:password])
      session[:user_id] = @user.id
      redirect_to links_path
    else
      render 'new'
    end
  end
end
