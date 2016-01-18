class CreateProfessionalinfos < ActiveRecord::Migration
  def change
    create_table :professionalinfos do |t|
      t.string :standard_passed
      t.string :professional_Qualification
      t.string :es_address_1
      t.string :es_address_2
      t.string :es_city
      t.integer :es_pin
      t.string :es_state
      t.string :es_tell
      t.string :es_email
      t.string :designation
      t.string :department
      t.string :occupation_details
      t.string :annual_income
      t.string :unemployed_registered_details
      t.string :unemployed_registration_no
      t.string :employment_registration_date
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
