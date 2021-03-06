class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def index

  end

  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to tasks_path
    else
      flash[:alert] = "Invalid email address or password"
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:email_address, :password, :password_confirmation)
  end
end
