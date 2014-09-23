class AddAvatarToWerks < ActiveRecord::Migration
  def self.up
    add_attachment :werks, :avatar
  end

  def self.down
    remove_attachment :werks, :avatar
  end
end
