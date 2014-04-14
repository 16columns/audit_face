class AdminMailer < ActionMailer::Base
  include Devise::Mailers::Helpers
  default from: "support@77comply.com",
          to:   ["vishant.pai@gmail.com", "vishant.pai@icloud.com"]

  def user_registered_message(user)
  	@user = user
    subject = "77comply - New User Registered"
    mail(:subject => subject)
  end
end
