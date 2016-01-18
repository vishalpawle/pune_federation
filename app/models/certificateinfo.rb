class Certificateinfo < ActiveRecord::Base
  belongs_to :member
  validates :blindness_issued_dr_name, :format => {:with => /\A[a-zA-z]+\z/, :message => "Only letters allowed."}, :allow_blank => true
  validate :crtdate
  def crtdate
    if certificate_date
      if certificate_date > Date.today
        errors.add(:date_of_admission, "Future date is not allowed")
      end
    end
  end

end
