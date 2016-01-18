class AddModeOfExamToScriberequest < ActiveRecord::Migration
  def change
    add_column :scriberequests, :mode_of_exam, :string
  end
end
