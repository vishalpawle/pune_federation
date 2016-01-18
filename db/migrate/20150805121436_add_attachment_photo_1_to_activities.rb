class AddAttachmentPhoto1ToActivities < ActiveRecord::Migration
  def self.up
    change_table :activities do |t|
      t.attachment :photo_1
    end
  end

  def self.down
    remove_attachment :activities, :photo_1
  end
end
