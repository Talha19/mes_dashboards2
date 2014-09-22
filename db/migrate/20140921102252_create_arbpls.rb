class CreateArbpls < ActiveRecord::Migration
  def change
    create_table :arbpls do |t|
      t.string :name
      t.string :beschr
      t.integer :werk_id

      t.timestamps
    end
  end
end
