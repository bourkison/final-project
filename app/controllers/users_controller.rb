class UsersController < ApplicationController

  before_action :check_if_logged_in, :only => [:edit]

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def addr_input

  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :address, :description, :password, :password_confirmation, :latitude, :longtitude)
  end
end
