class CreateArbeitsplatzs < ActiveRecord::Migration
  def change
    create_table :arbeitsplatzs do |t|
      t.string  :name
      t.string  :bezeichnung
      t.references :werk, index: true
      t.references :maschine, index: true
      t.timestamps
    end
  end
end
