class SessionsController < ApplicationController: 

	def create
		@user = User.find_by(email: params [:email])
		if @user and @user.password == params[:password]
			flash[:notice] = "Successfully signed into Bumbler!"
			session[:user_id] = @user.user_id
		else
			flash[:alert] = "Do you even go here???"
		end
			redirect_to root_path

	def destroy
		session[:user_id] = nil
		flash[:notice] = "Bumble again soon!"
	end

end
