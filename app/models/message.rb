class Message < ActiveRecord::Base
  validates :name, :phone, :subject, :message_content, :presence => true
  validates :phone, :format => { with: /(^\s*$|^\s*[789]\d{9}\s*$)/, :message => " Number should be start from 7, 8, or 9. " }, :presence => true
validates_format_of :email,  :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :allow_blank => true

end
