class AddAttachmentSignatureToDocumentinfos < ActiveRecord::Migration
  def self.up
    change_table :documentinfos do |t|
      t.attachment :signature
    end
  end

  def self.down
    remove_attachment :documentinfos, :signature
  end
end
