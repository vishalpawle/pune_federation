class AddAttachmentPhoto3ToActivities < ActiveRecord::Migration
  def self.up
    change_table :activities do |t|
      t.attachment :photo_3
    end
  end

  def self.down
    remove_attachment :activities, :photo_3
  end
end
