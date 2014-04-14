class AddColumnDeletedToAudits < ActiveRecord::Migration
  def change
    add_column :audits, :deleted, :boolean , :default => 0

  end
end
