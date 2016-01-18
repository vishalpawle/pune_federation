class AddFeeAmtToMember < ActiveRecord::Migration
  def change
    add_column :members, :fee_amt, :decimal
  end
end
