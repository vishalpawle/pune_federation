class CreateContactinfos < ActiveRecord::Migration
  def change
    create_table :contactinfos do |t|
      t.string :email
      t.string :fax
      t.string :contact_no
      t.string :mobile_no
      t.string :mobile_2
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
