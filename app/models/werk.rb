class Werk < ActiveRecord::Base
  has_many :arbpls
  
    has_attached_file :avatar
  
   # validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
