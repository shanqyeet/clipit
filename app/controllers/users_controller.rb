class UsersController < ApplicationController

	def show
		@clip = Clip.new
		@user = User.find(params[:id])
		if @user != current_user
			redirect_to '/'
		end	
		@brand_list = @user.brands 
		@cta_list = @user.call_to_actions.where(status: 0)
		@clip_list = @user.clips.where(status: 0)
	end 

	def archived 
		@user = User.find(params[:user_id])
		if @user != current_user
			redirect_to '/'
		end	
		@brand_list = @user.brands 
		@cta_list = @user.call_to_actions.where(status: 1)
		@clip_list = @user.clips.where(status: 1)
	end  
end
