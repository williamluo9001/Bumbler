class SessionsController < ApplicationController 


	def create
		@user = User.find_by(email: params[:email])
		if @user and @user.password == params[:password]
			flash[:notice] = "Successfully signed into Bumbler!"
			session[:user_id] = @user_id
		else
			flash[:alert] = "Do you even go here???"
		end
			redirect_to root_path
	end

	def destroy
		sessions[:user_id] = nil
		flash[:notice] = "Bumble again soon!"
		redirect_to root_path
	end

end
