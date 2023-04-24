class Manor < ApplicationRecord
  belongs_to :shire
  belongs_to :world
  # belongs_to :user
  has_many :hundreds

  after_create do
    for x in 0..9 do
      for y in 0..9 do
        Hundred.create(position: [x,y],manor_id: id,world_id: world_id)
      end  
    end
  end
end
