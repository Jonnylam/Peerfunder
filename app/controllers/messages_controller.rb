class MessagesController < ApplicationController
	# before_action :load_user
  def index
    @conversations = current_user.mailbox.conversations
    @notifications = current_user.mailbox.notifications.group_by &:sender_id
    @receipts = current_user.mailbox.receipts
    @message = current_user.mailbox.inbox.first.messages.first.body
  end

# GET /message/new
  def new
    @message = current_user.messages.new
    @user = User.find(params[:id])
    # display form
  end

  # POST /message/create
  def create
    if current_user.send_message(recipient, params[:body], params[:subject])
      flash[:notice] = "Message has been sent!"
      redirect_to :conversations
    else
      flash[:notice] = "failed"
      render :new
    end 
  end

  def mailboxer_email(object)
    email
  end

  private 
  def recipient
    @recipient ||= User.find(params[:user])
  end

  # def mailbox_params
  #   params.require(:mailboxer_notification).permit(:subject, :body, :type, :sender_id, :sender_type, :conversation_id)
  # end
end