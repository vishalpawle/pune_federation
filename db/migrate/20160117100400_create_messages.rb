class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :subject
      t.text :message_content

      t.timestamps null: false
    end
  end
end
