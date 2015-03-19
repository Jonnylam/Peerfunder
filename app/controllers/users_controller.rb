class UsersController < ApplicationController
  before_action :load_everything
  skip_before_filter :require_login, only: [:index, :new, :create]
  respond_to :json

  def index
    @users = User.all - [current_user]
  end

  def new
      @user = User.new
      u.avatar = params[:file]
  end

  def create
    @user = User.new(user_params)
     if @user.save
      UserMailer.welcome_email(@user).deliver_now
      auto_login(@user)
      redirect_to users_url, notice: "Signed up!"
    else
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
    @invitations = Invitation.all
  end

  def profile
    @user = current_user
  end

  def edit
    @user = User.find(params[:id])
    @user.save
  end

  def update
    @user = User.find(params[:id])
    @user.skip_password = true
      respond_to do |format|
      if @user.update_attributes(user_params)
        format.html { redirect_to user_path(@user)}
        format.js {}
        @user.save
      else
        format.html { render :show , alert: "Your attempt to update your profiledidn't work. Please try again!" }
        format.js {}
      end
    end

  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  # def follow
  #   @user = User.find(params[:id])
  #     if current_user
  #        current_user.follow(@user)
  #        flash[:notice] = "You are now following this person"
  #     else
  #        flash[:notice] = "Sorry you could not follow this person"
  #     end
  # end

  # def followable
  #   @followable ||= User.find(params[:id])
  # end

  # def inbox
  #   @user = User.first
  # end

  # def mailboxer_email(object)
  #   object.email
  # end


  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :biography, :experience, :accreditation, :profile_photo_url, :location, :dob, :user_type)
  end

  def load_everything
     @companies = Company.all
     @investments = Investment.all
     @rounds = Round.all
     @invitations = Invitation.all
     @follow = Follow.all
  end
end
