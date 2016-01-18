class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :category
      t.string :post
      t.text :information

      t.timestamps null: false
    end
  end
end
