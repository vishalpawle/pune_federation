class Scriberequest < ActiveRecord::Base
  belongs_to :member

  validates :member_mobile, :format => { with: /(^\s*$|^\s*[789]\d{9}\s*$)/, :message => " Number should be start from 7, 8, or 9. " }
  validates :scribe_mobile, :format => { with: /(^\s*$|^\s*[789]\d{9}\s*$)/, :message => " Number should be start from 7, 8, or 9. " }, :allow_blank => true
  validates_format_of :member_email, :scribe_email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :allow_blank => true
  validates :scribe_first_name, :scribe_last_name, :format => {:with => /\A[a-zA-z]+\z/, :message => "Only letters allowed."}, :allow_blank => true

  validates :member_name, :member_mobile, :exam_start_date, :exam_end_date, :exam_start_time, :exam_end_time, :type_of_exam, :what_type_of_scribe, :medium_of_exam, :address_1, :city, :pin, :state, :mode_of_exam, :presence => true
  validate :checkdate
  validate :mytime
  validate :examstartdate
  validate :examenddate
  def checkdate
    if exam_end_date && exam_start_date
      errors.add(:exam_end_date, "End date should not be smaller than start date ") if exam_end_date < exam_start_date
    end
  end
  def mytime
    if exam_end_time && exam_start_time
      errors.add(:exam_end_time, "Please enter valid time") if exam_end_time < exam_start_time
    end
  end

  def examstartdate
    if exam_start_date
      if exam_start_date < Date.today
        errors.add(:exam_start_date, "Passed date is not allowed!")
      end
    end
  end
  def examenddate
    if exam_end_date
      if exam_end_date < Date.today
        errors.add(:exam_end_date, "Pass date is not allowed!" )
      end
    end
  end
end
