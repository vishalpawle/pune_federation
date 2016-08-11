class AddOldMemberToForminfo < ActiveRecord::Migration
  def change
    add_column :forminfos, :old_member, :boolean
  end
end
