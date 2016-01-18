class Content < ActiveRecord::Base
  validates :dream_content, :dream, :about_flag, :about_us, :presence => true
end
