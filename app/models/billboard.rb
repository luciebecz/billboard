class Billboard < ApplicationRecord
  validates_presence_of :chart_name
  has_many :songs #i put has_many :songs in long after i migrated the file 
end
