class AddClientInfoColumnsToAudits < ActiveRecord::Migration
  def change
    add_column :audits, :organiation_name, :string
    add_column :audits, :address, :string
    add_column :audits, :contact_number, :string
    add_column :audits, :representative_name, :string
    add_column :audits, :representative_email, :string
  end
end
