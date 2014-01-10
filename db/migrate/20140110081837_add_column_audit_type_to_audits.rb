class AddColumnAuditTypeToAudits < ActiveRecord::Migration
  def change
      add_column :audits, :audit_type, :string
  end
end
