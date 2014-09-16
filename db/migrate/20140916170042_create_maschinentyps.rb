class CreateMaschinentyps < ActiveRecord::Migration
  def change
    create_table :maschinentyps do |t|
      t.string :name
      t.string :bezeichnung

      t.timestamps
    end
  end
end
