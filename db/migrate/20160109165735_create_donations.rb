class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.string :donar_name
      t.string :donar_email
      t.string :donar_mobile
      t.string :to_project
      t.string :how_did_you_find_us
      t.text :donation_comment
      t.boolean :account_flag
      t.string :bank_name
      t.string :account_no
      t.string :ifsc_code
      t.string :dd_name
      t.string :followup_with_donar
      t.text :donation_remarks
      t.string :receive_donation
      t.decimal :donation_amount

      t.timestamps null: false
    end
  end
end
