class AddAttachmentAddressProofToDocuments < ActiveRecord::Migration
  def self.up
    change_table :documents do |t|
      t.attachment :address_proof
    end
  end

  def self.down
    remove_attachment :documents, :address_proof
  end
end
