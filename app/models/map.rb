class Map < ApplicationRecord

  geocoded_by :airport_name
    after_validation :geocode
end
