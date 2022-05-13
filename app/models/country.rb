class Country < ApplicationRecord
  belongs_to :continent
  has_many :cities
  has_many :geographic_icons, through: :cities

  validates :denomination, presence: true, length: { maximum: 50 }
  validates :population, presence: true, numericality: { only_integer: true }
  validates :land_area, presence: true, numericality: true
end
