class City < ApplicationRecord
  belongs_to :country
  has_many :geographic_icons

  validates :denomination, presence: true, length: { maximum: 50 }
  validates :population, presence: true, numericality: { only_integer: true }
  validates :land_area, presence: true, numericality: true
end
