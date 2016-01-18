class Professionalinfo < ActiveRecord::Base
  belongs_to :member
  validates :annual_income, :standard_passed, :presence => true
validates_format_of  :es_email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :allow_blank => true

end
