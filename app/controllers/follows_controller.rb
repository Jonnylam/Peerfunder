class FollowsController < ApplicationController
	before_action :load_user
	def index
	end

	def create
		respond_to do |format|
			if current_user.follow(@user) 
				format.html {redirect_to users_path}
				format.js {}
				# flash[:notice] = "You are following #{@user.name} " 
			else 
				format.html { render :index}
				format.js {}
			end
		end
	end

	def destroy
		current_user.stop_following(@user)
		# flash[:notice] = "You stopped following #{@user.name}" 
		redirect_to users_path
	end


	private 
	def follow_params 
		params.require(:follow).permit(:followable_id, :followable_type, :follower_id, :follower_type)
	end

	def load_user
		@user = User.find(params[:user_id])
	end

end
