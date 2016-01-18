class AddSuspendToMember < ActiveRecord::Migration
  def change
    add_column :members, :suspend, :boolean
  end
end
