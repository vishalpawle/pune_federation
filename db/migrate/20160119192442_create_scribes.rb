class CreateScribes < ActiveRecord::Migration
  def change
    create_table :scribes do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :mobile
      t.string :qualification

      t.timestamps null: false
    end
  end
end
