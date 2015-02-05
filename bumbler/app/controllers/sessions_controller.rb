class SessionsController < ApplicationController 


	def create
		@user = User.find_by(email: params[:email])
		if @user and @user.password == params[:password]
			flash[:notice] = "Successfully signed into Bumbler!"
			puts "inside login session"
			session[:user_id] = @user.id
			redirect_to @user
		else
			flash[:alert] = "Do you even go here???"
			puts "inside login failed"
			redirect_to root_path
		end
			
	end

	def destroy
		session[:user_id] = nil
		flash[:notice] = "Bumble again soon!"
		redirect_to root_path
	end

end
