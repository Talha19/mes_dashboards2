class CreateMarbeiters < ActiveRecord::Migration
  def change
    create_table :marbeiters do |t|
      t.string :name
      t.string :vname
      t.integer :arbpl_id

      t.timestamps
    end
  end
end
