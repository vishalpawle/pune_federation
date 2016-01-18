class CreateAddressinfos < ActiveRecord::Migration
  def change
    create_table :addressinfos do |t|
      t.string :address_1
      t.string :address_2
      t.string :village
      t.string :taluka
      t.string :city
      t.integer :pin
      t.string :state
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
