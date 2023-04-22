class Duchy < ApplicationRecord
  belongs_to :kingdom
  has_many :counties

  after_create do
    County.create(name: "North County",duchy_id: id)
    County.create(name: "South County",duchy_id: id)
    County.create(name: "East County",duchy_id: id)
    County.create(name: "West County",duchy_id: id)
  end
end
