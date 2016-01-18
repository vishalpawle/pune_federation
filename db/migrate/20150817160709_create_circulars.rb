class CreateCirculars < ActiveRecord::Migration
  def change
    create_table :circulars do |t|
      t.string :circular_for
      t.string :circular_attachment
      t.string :circular_discription

      t.timestamps null: false
    end
  end
end
