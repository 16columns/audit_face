class AddColumnFindingsSubmittedToAudits < ActiveRecord::Migration
  def change
    add_column :audits, :findings_submitted, :boolean , :default => false
  end
end
