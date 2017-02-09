class Song < ApplicationRecord
validates_presence_of :title 

belongs_to: billboard
belongs_to: artist
end
