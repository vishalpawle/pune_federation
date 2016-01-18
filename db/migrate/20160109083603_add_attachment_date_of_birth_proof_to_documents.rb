class AddAttachmentDateOfBirthProofToDocuments < ActiveRecord::Migration
  def self.up
    change_table :documents do |t|
      t.attachment :date_of_birth_proof
    end
  end

  def self.down
    remove_attachment :documents, :date_of_birth_proof
  end
end
