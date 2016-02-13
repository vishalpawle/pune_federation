class Document < ActiveRecord::Base
  has_attached_file :disability_certificate, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :disability_certificate, content_type: /\Aimage\/.*\Z/
  has_attached_file :id_proof, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :id_proof, content_type: /\Aimage\/.*\Z/
  has_attached_file :address_proof, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :address_proof, content_type: /\Aimage\/.*\Z/
  has_attached_file :date_of_birth_proof, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :date_of_birth_proof, content_type: /\Aimage\/.*\Z/



  validates_attachment :disability_certificate, :presence => true
  validates_attachment :id_proof, :presence => true
  validates_attachment :address_proof, :presence => true
  validates_attachment :date_of_birth_proof, :presence => true
  validates_attachment_size :disability_certificate, :in => 50.kilobytes..100.kilobytes
  validates_attachment_size :id_proof, :in => 50.kilobytes..100.kilobytes
  validates_attachment_size :address_proof, :in => 50.kilobytes..100.kilobytes
  validates_attachment_size :date_of_birth_proof, :in => 50.kilobytes..100.kilobytes
  belongs_to :member
end
