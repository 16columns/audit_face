class UserMailer < ActionMailer::Base
  default :from => "vishant@comply.com"  
  
  def welcome_email(user)  
    mail(:to => user.email, :subject => "Grand welcome to 77comply!")  
  end  
  
  def assign_audit(audit)
    @audit = audit
    mail(:to => audit.auditor_email, :subject => "Notification: Mark your calendar, an audit is assigned")  
  end
end
