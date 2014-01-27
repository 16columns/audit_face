class Audit < ActiveRecord::Base
  attr_accessible :auditee_email, :auditee_name, :auditor_email, :auditor_name, :department_name, :end_date, :start_date, :user_id, :audit_type,:location
  belongs_to :user
  has_many :findings, :dependent => :destroy
  
  validates :department_name, :auditee_name, :auditee_email, :auditor_name, 
            :auditor_email, :presence => true
            
  validates :start_date, :date => {:before_or_equal_to => :end_date, :message => 'must be before or same as end date' }
  
  self.per_page = 3

  validate :cannot_audit_self

  def cannot_audit_self
    self.errors[:base] << "You can not audit yourself." if self.auditee_email == self.auditor_email
  end
  
end



