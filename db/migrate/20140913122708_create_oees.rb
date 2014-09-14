class CreateOees < ActiveRecord::Migration
  def change
    create_table :oees do |t|
      t.string :werk
      t.date :datum
      t.string :arbpl
      t.string :shift_text
      t.float :ist_prod
      t.float :ist_ruest
      t.float :ist_still
      t.float :ist_stoe

      t.timestamps
    end
  end
end
