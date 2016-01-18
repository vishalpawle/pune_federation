class Disabilityinfo < ActiveRecord::Base
  belongs_to :member
    validates :have_you_disability, :presence => true
end
