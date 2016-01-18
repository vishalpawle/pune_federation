class AddAttachmentToCircular < ActiveRecord::Migration
  def change
    add_column :circulars, :attachment, :string
  end
end
