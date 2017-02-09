class Artist < ApplicationRecord
  validates_presence_of :artist_name
  has_many :songs
end
