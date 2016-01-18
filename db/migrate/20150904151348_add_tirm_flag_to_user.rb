class AddTirmFlagToUser < ActiveRecord::Migration
  def change
    add_column :users, :tirm_flag, :boolean
  end
end
