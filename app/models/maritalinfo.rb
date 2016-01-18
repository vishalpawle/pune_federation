class Maritalinfo < ActiveRecord::Base
  belongs_to :member
  validates :marital_status, :no_of_family_members, :parents_dependent_on_you, :presence => true
  validates :spouse_firstt_name, :spouse_middle_name, :spouse_sur_name, :format => {:with => /\A[a-zA-z]+\z/, :message => "Only letters allowed."}, :allow_blank => true
      
  validate :wdate

  def wdate
    if wedding_anniversary_date
      if wedding_anniversary_date > Date.today
        errors.add(:date_of_admission, "Future date is not allowed")
      end
    end
  end
end
