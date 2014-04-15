class AddColumnDeletedToAudits < ActiveRecord::Migration
  def change
    add_column :audits, :deleted, :boolean , :default => false

  end
end
