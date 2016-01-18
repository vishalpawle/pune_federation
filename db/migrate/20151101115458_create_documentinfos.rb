class CreateDocumentinfos < ActiveRecord::Migration
  def change
    create_table :documentinfos do |t|
      t.string :type_id_proup
      t.string :id_no
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
