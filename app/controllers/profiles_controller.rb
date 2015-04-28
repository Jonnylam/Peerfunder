class ProfilesController < ApplicationController
	before_action :load_everything
	load_and_authorize_resource :company
	def index
	end

	def new
		@profile = Profile.new
	end

	def create
		@profile = Profile.new(profile_params)
	end

	private 
	
	def profile_params
	end

	def load_everything
		@companies = Company.all
	end

end
