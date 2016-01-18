class Personalinfo < ActiveRecord::Base
  belongs_to :member
  validates :first_name, :last_name, :date_of_birth, :gender, :type_human, :occupation, :presence => true
  validates :first_name, :last_name, :format => {:with => /\A[a-zA-z]+\z/, :message => "Only letters allowed."}
  validates :middle_name, :format => {:with => /\A[a-zA-z]+\z/, :message => "Only letters allowed."}, :allow_blank => true
  validate :ckdob
  def ckdob
    if date_of_birth
      if date_of_birth >= Date.today
        errors.add(:date_of_birth, "Do not allow to enter future date.")
      elsif date_of_birth.year > Date.today.year - 18
        errors.add(:date_of_birth, "Please enter the 18 year before date.")
      end
    end
  end

end
