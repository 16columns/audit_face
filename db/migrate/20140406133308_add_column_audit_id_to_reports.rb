class AddColumnAuditIdToReports < ActiveRecord::Migration
  def change
    add_column :reports, :audit_id, :integer
  end
end
