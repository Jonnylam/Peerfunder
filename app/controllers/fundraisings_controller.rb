class FundraisingsController < ApplicationController
	  before_action :load_everything
	def index
	end

	def currentislead
		@round.lead_investor = current_user
	end

	def findlead
	end

	def havealead
	end

private

	def load_everything
    @round = Round.find(params[:round_id])
    @company = Company.find(params[:company_id])
  end
end
