class CreateServiceinfos < ActiveRecord::Migration
  def change
    create_table :serviceinfos do |t|
      t.boolean :member_braille_books_circulating_library
      t.boolean :self_employment_aid
      t.boolean :scholarship_student_aid_scheme
      t.boolean :member_of_braille_jagriti_magazine
      t.boolean :placement_services
      t.boolean :medical_aid
      t.boolean :counselling_services
      t.string :any_others
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
