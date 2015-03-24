class FundraisingsController < ApplicationController
	def index
	end

	def currentislead
		@round.lead_investor = current_user
	end

	def findlead
	end

	def havealead
	end
end
