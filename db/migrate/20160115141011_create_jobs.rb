class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :company
      t.string :type_job
      t.string :url
      t.text :discription

      t.timestamps null: false
    end
  end
end
