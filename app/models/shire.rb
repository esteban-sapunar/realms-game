class Shire < ApplicationRecord
  belongs_to :county
  has_many :manors

  after_create do
    Manor.create(name: "First Manor",shire_id: id)
    Manor.create(name: "Second Manor",shire_id: id)
    Manor.create(name: "Third Manor",shire_id: id)
  end
end
