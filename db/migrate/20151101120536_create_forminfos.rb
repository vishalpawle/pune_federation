class CreateForminfos < ActiveRecord::Migration
  def change
    create_table :forminfos do |t|
      t.string :introduces_by
      t.date :member_submited_form_date
      t.string :f_place
      t.boolean :form_details
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
