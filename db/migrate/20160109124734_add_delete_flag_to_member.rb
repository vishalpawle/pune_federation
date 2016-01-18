class AddDeleteFlagToMember < ActiveRecord::Migration
  def change
    add_column :members, :delete_flag, :boolean
  end
end
