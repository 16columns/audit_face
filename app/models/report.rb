class Report < ActiveRecord::Base
  attr_accessible :report_name, :report_status, :report_tag, :audit_id ,:avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  belongs_to :audit
  do_not_validate_attachment_file_type :avatar
end
