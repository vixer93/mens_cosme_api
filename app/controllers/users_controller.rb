class UsersController < ApplicationController
  def index
    if params[:uid]
      @user = User.find_by(uid: params[:uid])
      render json: @user
    else
      @users = User.all
      render json: @users
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render json: @user.errors
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :uid)
  end
end
