# frozen_string_literal: true

# == Schema Information
#
# Table name: cities
#
#  id           :bigint           not null, primary key
#  denomination :string
#  land_area    :float
#  population   :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  country_id   :bigint           not null
#
# Indexes
#
#  index_cities_on_country_id  (country_id)
#
# Foreign Keys
#
#  fk_rails_...  (country_id => countries.id)
#
class City < ApplicationRecord
  belongs_to :country
  has_many :geographic_icons, dependent: :destroy

  validates :denomination, presence: true, length: { maximum: 50 }
  validates :population, presence: true, numericality: { only_integer: true }
  validates :land_area, presence: true, numericality: true
end
