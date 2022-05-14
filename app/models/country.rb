# frozen_string_literal: true

# == Schema Information
#
# Table name: countries
#
#  id           :bigint           not null, primary key
#  denomination :string
#  land_area    :float
#  population   :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  continent_id :bigint           not null
#
# Indexes
#
#  index_countries_on_continent_id  (continent_id)
#
# Foreign Keys
#
#  fk_rails_...  (continent_id => continents.id)
#
class Country < ApplicationRecord
  belongs_to :continent
  has_many :cities, dependent: :destroy
  has_many :geographic_icons, through: :cities

  validates :denomination, presence: true, length: { maximum: 50 }
  validates :population, presence: true, numericality: { only_integer: true }
  validates :land_area, presence: true, numericality: true
end
