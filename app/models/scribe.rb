class Scribe < ActiveRecord::Base
  validates :first_name, :last_name, :mobile, :qualification, :type_join, :presence => true
  validates :mobile, :format => { with: /(^\s*$|^\s*[789]\d{9}\s*$)/, :message => " Number should be start from 7, 8, or 9. " }, :presence => true
validates_format_of :email,  :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :allow_blank => true


  validates :first_name, :last_name, :format => {:with => /\A[a-zA-z]+\z/, :message => "Only letters allowed."}

end
