class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.text :anual_activity
      t.boolean :hdn_boolean
      t.string :activity_title
      t.date :activity_created_date
      t.text :activity_discription

      t.timestamps null: false
    end
  end
end
