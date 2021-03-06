class Circular < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
  validates :circular_for, :circular_discription, :attachment, :presence => true
end
