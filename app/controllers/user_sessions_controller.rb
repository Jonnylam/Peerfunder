class UserSessionsController < ApplicationController
  def new
  end

  def create
    if @user = login(params[:email], params[:password], params[:remember])
    redirect_back_or_to user_path(@user), notice: 'Login successful'
     else
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    reset_session
    redirect_to root_url, :notice => 'Logged out!'
  end
end