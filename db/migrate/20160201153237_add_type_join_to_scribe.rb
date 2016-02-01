class AddTypeJoinToScribe < ActiveRecord::Migration
  def change
    add_column :scribes, :type_join, :string
  end
end
