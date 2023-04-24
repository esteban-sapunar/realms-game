class County < ApplicationRecord
  belongs_to :duchy
  belongs_to :world
  has_many :shires

  after_create do
    Shire.create(name: "North Shire",county_id: id,world_id: world_id)
    Shire.create(name: "South Shire",county_id: id,world_id: world_id)
    Shire.create(name: "East Shire",county_id: id,world_id: world_id)
    Shire.create(name: "West Shire",county_id: id,world_id: world_id)
  end
end
