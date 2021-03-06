class UserController < ApplicationController

	def edit
		@user = current_user
	end

	def update
		@user = current_user
		if @user.update(user_params)
			redirect_to :root
		else
			render action: :edit
		end
	end

	private
	def user_params
		params.require(:user).permit(:name)
	end


end
