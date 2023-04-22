class Hundred < ApplicationRecord
  belongs_to :manor
  TYPES = ['forest','forest','forest','forest','lake','open_field','open_field','open_field','open_field','open_field','hill','hill']

  before_create :set_type

  private
  def set_type
    self.hundred_type = TYPES.sample
  end
end
