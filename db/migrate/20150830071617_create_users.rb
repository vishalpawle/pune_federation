class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :role
      t.text :tirms_content
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
