class CreateDisabilityinfos < ActiveRecord::Migration
  def change
    create_table :disabilityinfos do |t|
      t.string :have_you_disability
      t.string :type_disability
      t.integer :percentage_disability
      t.integer :since_age
      t.text :disability_reason
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
