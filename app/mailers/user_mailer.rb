class UserMailer < ActionMailer::Base
  default from: "W Hub <admin@whub.com>"
  
  def reset_email(user, request)
    @user = user
    @host = request.protocol + request.host_with_port
    
    mail to: @user.email, subject: "W Hub: Reset your credentials"
  end
  
  def registration_email(registrant, request)
    @registrant = registrant
    @host = request.protocol + request.host_with_port
    
    mail to: @registrant.email, subject: "W Hub: Complete your registration"
  end
end