class Kingdom < ApplicationRecord
  has_many :duchies

  after_create do
    Duchy.create(name: "North Duchy",kingdom_id: id)
    Duchy.create(name: "South Duchy",kingdom_id: id)
    Duchy.create(name: "East Duchy",kingdom_id: id)
    Duchy.create(name: "West Duchy",kingdom_id: id)
    Duchy.create(name: "Center Duchy",kingdom_id: id)
  end
end
