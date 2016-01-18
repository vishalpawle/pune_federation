class AddAttachmentIdProofToDocuments < ActiveRecord::Migration
  def self.up
    change_table :documents do |t|
      t.attachment :id_proof
    end
  end

  def self.down
    remove_attachment :documents, :id_proof
  end
end
