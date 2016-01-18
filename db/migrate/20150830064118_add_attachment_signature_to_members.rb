class AddAttachmentSignatureToMembers < ActiveRecord::Migration
  def self.up
    change_table :members do |t|
      t.attachment :signature
    end
  end

  def self.down
    remove_attachment :members, :signature
  end
end
