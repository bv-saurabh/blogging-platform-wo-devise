class UsersController < ApplicationController
	def new_user
		@user = User.new
	end

	def create_user
		@user = User.new(user_params)
		if params[:password] == params[:password_confirmation]
			if @user.save
				session[:user_id] = @user.id
				redirect_to '/articles'
			else
				render 'new_user'
			end
		else
			@user.errors.add(:base, "Password and confirm password do not match")
		end
	end

	def new_login
	end

	def create_login
		@user = User.find_by_email(params[:email])
		if @user && @user.authenticate(params[:password])
			session[:user_id] = @user.id
			redirect_to '/articles'
		else
			redirect_to '/login'
		end
	end

	def logout
		session[:user_id] = nil
		redirect_to '/login'
	end

	private
	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end
end
