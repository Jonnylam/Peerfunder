class RoundsController < ApplicationController
  # before_action :load_company
  load_and_authorize_resource :company
  load_and_authorize_resource :round, :through => :company

  def new
    @round = Round.new
  end

  def create
    @round = Round.new(round_params)
    @round.lead_investor = current_user  #Setting the lead_investor to current_user.
    @round.company_id = params[:company_id]

    if @round.save
      redirect_to processing_round_information_company_rounds_path
      # redirect_to company_round_fundraisings_path(@company, @round), notice: "New Round has been created"
    else
       format.html {
        flash[:notice] = "Failed to save round."
        render :show
       }
        format.js {}
    end
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
    redirect_to @round.company
  end

  private

  def processing_round_information
  end

  def find_round
    @round = Round.find(params[:id])
  end

  def round_params
    params.require(:round)
          .permit(:company_id,
                  :lead_investor_id,
                  :funding_goal,
                  :term_sheet,
                  due_diligences_attributes: [:id, :file, :done, :_destroy])
  end

  def load_company
    @company = Company.all
  end
end
