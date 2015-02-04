class UsersController < ApplicationController
	before_action :set_user, only: [:edit, :update, :show, :destroy]
  def index
  	@users = User.all
  end

  def new
  	@user= User.new
  end

  def edit
  end

  def show
  end

  def update
  	@user.update(params[:user])
  	redirect_to @user, notice: "User successfully updated."
  end

  def create
  	@user=User.create(params[:user])
  	redirect_to @user, notice: "Welcome to Bumbler!"
  end

  def destroy
  	@user.destroy
  	redirect_to users_path, notice: "Sorry to see you leave Bumbler!"

private

def set_user
	@user = User.find(params[:id])
end

def user_params
	params.require(:user).permit(:email, :name, :password, :bio)
end



end
