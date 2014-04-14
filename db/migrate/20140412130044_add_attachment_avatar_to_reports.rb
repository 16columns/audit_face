class AddAttachmentAvatarToReports < ActiveRecord::Migration
  def self.up
    change_table :reports do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :reports, :avatar
  end
end
