class Arbeitsplatz < ActiveRecord::Base
  has_one :maschinentyp
  belongs_to :werk
end
