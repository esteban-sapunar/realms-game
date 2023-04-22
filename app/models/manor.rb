class Manor < ApplicationRecord
  belongs_to :shire
  has_many :hundreds

  after_create do
    for x in 0..9 do
      for y in 0..9 do
        Hundred.create(position: [x,y],manor_id: id)
      end  
    end
  end
end
