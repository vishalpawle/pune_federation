class CreateScriberequests < ActiveRecord::Migration
  def change
    create_table :scriberequests do |t|
      t.string :member_name
      t.string :member_email
      t.string :member_mobile
      t.date :exam_start_date
      t.date :exam_end_date
      t.integer :exam_duration
      t.time :exam_start_time
      t.time :exam_end_time
      t.string :type_of_exam
      t.string :what_type_of_scribe
      t.string :medium_of_exam
      t.string :address_1
      t.string :address_2
      t.string :city
      t.integer :pin
      t.string :state
      t.text :exam_discription
      t.string :scribe_first_name
      t.string :scribe_last_name
      t.string :scribe_email
      t.string :scribe_mobile
      t.text :rejection_reason
      t.string :request_status
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
