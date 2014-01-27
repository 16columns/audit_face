class UserMailer < ActionMailer::Base
  default :from => "vishant@comply.com"  
  
  def welcome_email(user)  
    mail(:to => user.email, :subject => "Grand welcome to 77comply!")  
  end  
  
  def assign_audit(audit,current_user)
    @audit = audit
    @user = current_user
    mail(:to => audit.auditor_email, :subject => "Notification: Mark your calendar, an audit is assigned")  
  end
  
  def assign_auditee(audit,current_user)
    @audit = audit
    @user = current_user
    mail(:to => audit.auditee_email, :subject => "Notification: Mark your calendar, an audit is assigned ")  
  end
  
  def audit_deleted_auditor(audit,current_user)
    @audit = audit
    @user = current_user
    mail(:to => audit.auditor_email, :subject => "Notification: Audit cancelled")  
  end
  
  def audit_deleted_auditee(audit,current_user)
    @audit = audit
    @user = current_user
    mail(:to => audit.auditee_email, :subject => "Notification: Audit cancelled")  
  end
end
