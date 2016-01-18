class AddAttachmentPhoto2ToActivities < ActiveRecord::Migration
  def self.up
    change_table :activities do |t|
      t.attachment :photo_2
    end
  end

  def self.down
    remove_attachment :activities, :photo_2
  end
end
