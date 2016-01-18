class AddFeeReceiveFlagToMember < ActiveRecord::Migration
  def change
    add_column :members, :fee_receive_flag, :boolean
  end
end
