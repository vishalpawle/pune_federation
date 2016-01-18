class AddOnwichNumberToContactinfo < ActiveRecord::Migration
  def change
    add_column :contactinfos, :on_wich_number, :string
  end
end
