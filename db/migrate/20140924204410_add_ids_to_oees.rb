class AddIdsToOees < ActiveRecord::Migration
  def change
    add_reference :oees, :werk, index: true
    add_reference :oees, :arbpl, index: true
  end
end
