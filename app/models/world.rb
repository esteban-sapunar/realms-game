class World < ApplicationRecord
  after_create do
    Kingdom.create(name: "Kingdom",world_id: id)
  end
end
