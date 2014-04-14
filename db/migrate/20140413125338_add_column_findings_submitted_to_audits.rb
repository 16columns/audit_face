class AddColumnFindingsSubmittedToAudits < ActiveRecord::Migration
  def change
    add_column :audits, :findings_submitted, :boolean , :default => 0
  end
end
