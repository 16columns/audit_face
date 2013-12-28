class Audit < ActiveRecord::Base
  attr_accessible :auditee_email, :auditee_name, :auditor_email, :auditor_name, :department_name, :end_date, :start_date, :user_id
  belongs_to :user
  has_many :findings, :dependent => :destroy
  
  validates :department_name, :auditee_name, :auditee_email, :auditor_name, 
            :auditor_email, :presence => true
            
  validates :start_date, :date => {:before => :end_date, :message => 'Start date must be before end date' }
  
  self.per_page = 3
  

end
