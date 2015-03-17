class DueDiligencesController < ApplicationController
	def show
    @diligence = DueDiligence.find(params[:id])
  end

  def create
    @diligence = @round.due_diligences.build(diligence_params)
    @diligence.user = current_user

    if @diligence.save
      redirect_to company_rounds_path, notice: 'File added successfully'
    else
      render new_company_round_path
    end
  end

  def destroy
    @diligence = DueDiligence.find(params[:id])
    @diligence.destroy
  end

  private
  def reward_params
    params.require(:reward).permit(:title,:description,:amount,:_destroy)
  end
end
