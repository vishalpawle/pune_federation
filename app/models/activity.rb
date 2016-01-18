class Activity < ActiveRecord::Base
  validates :activity_title, :activity_created_date, :activity_discription, :presence => true
has_attached_file :photo_1, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
has_attached_file :photo_2, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
has_attached_file :photo_3, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
validates_attachment_content_type :photo_1, :content_type => /\Aimage\/.*\Z/
validates_attachment_content_type :photo_2, :content_type => /\Aimage\/.*\Z.
/
validates_attachment_content_type :photo_3, :content_type => /\Aimage\/.*\Z/
  validate :chkdate
  def chkdate
    if activity_created_date
      if activity_created_date > Date.today
        errors.add(:activity_created_date, "not a valid date")
      end
    end
  end
end
