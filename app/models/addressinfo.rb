class Addressinfo < ActiveRecord::Base
  belongs_to :member
  validates :address_1, :village, :city, :pin, :state, :presence => true
end
