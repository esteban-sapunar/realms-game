class County < ApplicationRecord
  belongs_to :duchy
  has_many :shires

  after_create do
    Shire.create(name: "North Shire",county_id: id)
    Shire.create(name: "South Shire",county_id: id)
    Shire.create(name: "East Shire",county_id: id)
    Shire.create(name: "West Shire",county_id: id)
  end
end
