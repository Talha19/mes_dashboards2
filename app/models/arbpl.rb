class Arbpl < ActiveRecord::Base
  belongs_to :werk
  has_one :matyp, :dependent => :destroy
end
