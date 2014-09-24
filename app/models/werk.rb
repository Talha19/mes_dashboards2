class Werk < ActiveRecord::Base
  validates :werk, presence: true
  has_many :arbpls
  
    has_attached_file :avatar

  # has_attached_file :bild, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  # validates_attachment_content_type :bild, :content_type => /\Aimage\/.*\Z/

   # validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
