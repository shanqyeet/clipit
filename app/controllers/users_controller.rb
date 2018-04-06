class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
		if @user != current_user
			redirect_to '/'
		end	
	
		@brand_list = Brand.all
	end 
end
