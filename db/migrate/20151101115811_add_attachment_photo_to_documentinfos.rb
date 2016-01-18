class AddAttachmentPhotoToDocumentinfos < ActiveRecord::Migration
  def self.up
    change_table :documentinfos do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :documentinfos, :photo
  end
end
