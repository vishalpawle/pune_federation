class Documentinfo < ActiveRecord::Base
  belongs_to :member
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
  has_attached_file :signature, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
validates_attachment_content_type :signature, :content_type => /\Aimage\/.*\Z/
  validates_attachment :photo, :presence => true #:content_type =># { :content_type => ['image/jpg', 'image/png', 'image/jpeg']}
  validates_attachment :signature, :presence => true #:content_type => { :content_type => ['image/jpg', 'image/png', 'image/jpeg']}
  validates :type_id_proup, :id_no, :presence => true
end
