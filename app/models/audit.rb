class Audit < ActiveRecord::Base
  attr_accessible :auditee_email, :auditee_name, :auditor_email, :auditor_name, :department_name, :end_date, :start_date, :user_id, :audit_type,:location, :secondry_auditor_name, :secondry_auditor_email, :organiation_name, :address, :contact_number, :representative_name, :representative_email,:deleted,:findings_submitted
  belongs_to :user
  has_many :findings, :dependent => :destroy
  has_one :report
  validates :department_name, :auditee_name, :auditee_email, :auditor_name, 
            :auditor_email, :location, :organiation_name, :presence => true
            
  validates :start_date, :date => {:before_or_equal_to => :end_date, :message => 'must be before or same as end date' }
  
  self.per_page = 3

  validate :cannot_audit_self

  def cannot_audit_self
    self.errors[:base] << "You can not audit yourself." if self.auditee_email == self.auditor_email
  end
  
  def self.capa_pending_auto_follow_up
    @audits_capa_pending = []
    @audits = Audit.all
    @audits.each do |audit|
      audit.findings.each do |finding|
        if finding.status_id == "CAPA Pending" || finding.status_id == ""
          @audits_capa_pending << audit
          break
        end
      end
    end
    @audits_capa_pending.each do |audit|
      UserMailer.capa_pending_auto_follow_up(audit,current_user).deliver
    end
     #@user = User.all
     # @user.each do |u|
     #   UsersMailer.weekly_mail(u).deliver
    #end
  end

  

def self.import(file)
  spreadsheet = open_spreadsheet(file)
  header = spreadsheet.row(1)
  (2..spreadsheet.last_row).each do |i|
    row = Hash[[header, spreadsheet.row(i)].transpose]
   # product = find_by_id(row["id"]) || new
    #product.attributes = row.to_hash.slice(*accessible_attributes)
    puts "************attributes********************"
    puts row.to_hash.slice(*accessible_attributes)
    puts "******************************************"
   # product.save!
  end
end



def self.open_spreadsheet(file)
  case File.extname(file.original_filename)
  when '.csv' then Csv.new(file.path, nil, :ignore)
  when '.xls' then Excel.new(file.path, nil, :ignore)
  when '.xlsx' then Excelx.new(file.path, nil, :ignore)
  else raise "Unknown file type: #{file.original_filename}"
  end
end



  def self.submit_findings_follow_up
     Audit.all.each do |audit|
      if audit.findings_submitted == false || audit.findings_submitted == 0
        UserMailer.submit_findings_follow_up(audit,current_user).deliver      
      end
    end
  end  
end


