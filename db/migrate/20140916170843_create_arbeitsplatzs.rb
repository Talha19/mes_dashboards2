class CreateArbeitsplatzs < ActiveRecord::Migration
  def change
    create_table :arbeitsplatzs do |t|
      t.string  :name
      t.string  :bezeichnung
      t.integer :werk_id
      t.string  :maschine
      t.timestamps
    end
  end
end
