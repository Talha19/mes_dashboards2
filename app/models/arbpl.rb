class Arbpl < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :werk
  has_one :matyp, :dependent => :destroy
  has_many :marbeiters, :dependent => :destroy
end
