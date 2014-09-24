class Matyp < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :arbpl
end
