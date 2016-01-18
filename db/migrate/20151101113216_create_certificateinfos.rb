class CreateCertificateinfos < ActiveRecord::Migration
  def change
    create_table :certificateinfos do |t|
      t.string :do_you_have_blindness
      t.string :blindness_issued_dr_name
      t.string :place
      t.string :certificate_no
      t.date :certificate_date
      t.integer :percent_blindness_stated
      t.string :do_you_know_braille
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
