class CreateMatyps < ActiveRecord::Migration
  def change
    create_table :matyps do |t|
      t.string :name
      t.string :beschr
      t.integer :arbpl_id

      t.timestamps
    end
  end
end
