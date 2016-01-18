class Forminfo < ActiveRecord::Base
  belongs_to :member
  validates :introduces_by, :form_details, :presence => true
  validates :introduces_by, :format => {:with => /\A[a-zA-z]+\z/, :message => "Only letters allowed."}
  validate :msdate

  def msdate
    if member_submited_form_date
      if member_submited_form_date > Date.today
        errors.add(:date_of_admission, "Future date is not allowed")
      end
    end
  end
end
