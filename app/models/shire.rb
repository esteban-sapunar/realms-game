class Shire < ApplicationRecord
  belongs_to :county
  belongs_to :world
  has_many :manors

  after_create do
    Manor.create(name: "First Manor",shire_id: id,world_id: world_id)
    Manor.create(name: "Second Manor",shire_id: id,world_id: world_id)
    Manor.create(name: "Third Manor",shire_id: id,world_id: world_id)
  end
end
