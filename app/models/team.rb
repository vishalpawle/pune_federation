class Team < ActiveRecord::Base
  validates :name, :category, :post, :information, :presence => true
end
