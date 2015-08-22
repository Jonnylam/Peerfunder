class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"

	def welcome_email(user)
		@user = user
		@url = 'http://example.com/Login'
		mail(to: @user.email, subject: 'Welcome to Peerfunder')
	end
end
