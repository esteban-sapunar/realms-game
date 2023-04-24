class Duchy < ApplicationRecord
  belongs_to :kingdom
  belongs_to :world
  has_many :counties

  after_create do
    County.create(name: "North County",duchy_id: id,world_id: world_id)
    County.create(name: "South County",duchy_id: id,world_id: world_id)
    County.create(name: "East County",duchy_id: id,world_id: world_id)
    County.create(name: "West County",duchy_id: id,world_id: world_id)
  end
end
