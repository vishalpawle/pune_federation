class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.text :dream_content
      t.text :about
      t.boolean :dream
      t.boolean :about

      t.timestamps null: false
    end
  end
end
