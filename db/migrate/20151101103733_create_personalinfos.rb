class CreatePersonalinfos < ActiveRecord::Migration
  def change
    create_table :personalinfos do |t|
      t.string :type_human
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :date_of_birth
      t.string :gender
      t.string :occupation
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
