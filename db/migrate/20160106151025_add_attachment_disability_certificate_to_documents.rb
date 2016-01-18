class AddAttachmentDisabilityCertificateToDocuments < ActiveRecord::Migration
  def self.up
    change_table :documents do |t|
      t.attachment :disability_certificate
    end
  end

  def self.down
    remove_attachment :documents, :disability_certificate
  end
end
