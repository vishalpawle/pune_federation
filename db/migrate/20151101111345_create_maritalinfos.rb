class CreateMaritalinfos < ActiveRecord::Migration
  def change
    create_table :maritalinfos do |t|
      t.string :marital_status
      t.date :wedding_anniversary_date
      t.string :spouse_type
      t.string :spouse_firstt_name
      t.string :spouse_middle_name
      t.string :spouse_sur_name
      t.integer :no_of_family_members
      t.integer :kids
      t.string :parents_dependent_on_you
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
