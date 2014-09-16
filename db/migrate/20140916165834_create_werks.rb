class CreateWerks < ActiveRecord::Migration
  def change
    create_table :werks do |t|
      t.string :werk
      t.string :stadt
      t.string :land

      t.timestamps
    end
  end
end
