class AddSuspendRemarksToMember < ActiveRecord::Migration
  def change
    add_column :members, :suspend_remarks, :text
  end
end
