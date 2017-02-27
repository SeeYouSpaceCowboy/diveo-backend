class Api::V1::UsersController < ApplicationController
  def login
    @user = User.find_by(username: params[:user][:username])

    if @user && @user.authenticate(params[:user][:password])
      render json: @user
    else
      render json: { error: "Failed to login" }, status: 400
    end
  end

  def create
    @user = User.create(strong_params)

    if @user
      render json: @user
    else
      render json: { error: "Failed to create user." }, status: 400
    end
  end

  def index
    @users = User.all

    render json: @users
  end

  def show
    @user = User.find(1)
    render json: @user
  end

  def destroy
    @user = User.find_by(username: params[:user][:username])

    if @user && @user.authenticate(params[:user][:password])
      @user.destroy
      render json: { success: "User deleted" }
    else
      render json: { error: "User failed to delete" }, status: 400
    end
  end

  private

    def strong_params
      params.require(:user).permit(:username, :password, :password_confirmation, :first_name, :last_name, :avatar_img)
    end
end
