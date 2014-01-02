class Finding < ActiveRecord::Base
  attr_accessible :category, :corrective_action, :date_created, :description, 
                  :preventive_action, :risk_rating, :audit_id, :department_name, :category_name, 
                  :risk_name, :status_name, :status_id,
                  :document_attributes, :iso_clause
  belongs_to :audit
  belongs_to :finding_type
  belongs_to :risk
  belongs_to :finding_status
  belongs_to :document
  
  accepts_nested_attributes_for :document
  
end
