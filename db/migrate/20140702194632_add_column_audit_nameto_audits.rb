class AddColumnAuditNametoAudits < ActiveRecord::Migration
  def change
  	add_column :audits , :audit_name , :string

  end

end
