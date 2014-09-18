class CreateMaschinentyps < ActiveRecord::Migration
  def change
    create_table :maschinentyps do |t|
      t.string :name
      t.string :bezeichnung
      t.integer :arbeitsplatz_id
      t.timestamps
    end
  end
end
