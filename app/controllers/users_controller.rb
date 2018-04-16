class UsersController < ApplicationController

	def show
		@clip = Clip.new
		@user = User.find(params[:id])
		if @user != current_user
			redirect_to '/'
		end	
		@brand_list = @user.brands 
		@cta_list = @user.call_to_actions
		@clip_list = @user.clips
	end 
end
