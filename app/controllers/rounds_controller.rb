class RoundsController < ApplicationController
  before_action :load_companies

  def new
    @round = Round.new
  end

  def create
    @round = Round.new(round_params)
    @round.lead_investor = current_user
    @round.company = @company
    if @round.save
      redirect_to company_round_path(@company, @round), notice: "New Round has been created"
    else
       format.html { render :show , alert: "Round could not be saved. Please try again!" }
        format.js {}
    end
  end

  def find_round
    @round = Round.find(params[:id])
  end

  def show
    find_round
  end

  def edit
    find_round
  end

  def destroy
    find_round
    @round.destroy
    redirect_to @company
  end

  private 
  def round_params
    params.require(:round).permit(:company_id, :lead_investor_id, :funding_goal, :term_sheet)
  end

  def load_companies
    @companies = Company.all
  end
end
