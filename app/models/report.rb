class Report < ActiveRecord::Base
  attr_accessible :report_name, :report_status, :report_tag, :audit_id ,:avatar
  has_attached_file :avatar
  do_not_validate_attachment_file_type :avatar

  belongs_to :audit
  belongs_to :user
  
 validates :report_name, :report_status, :report_tag, :audit_id ,:avatar, :presence => true

end
