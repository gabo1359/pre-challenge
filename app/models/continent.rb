# frozen_string_literal: true

# == Schema Information
#
# Table name: continents
#
#  id           :bigint           not null, primary key
#  denomination :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Continent < ApplicationRecord
  has_many :countries, dependent: :destroy
  has_many :cities, through: :countries
  has_many :geographic_icons, through: :countries

  validates :denomination, presence: true, length: { maximum: 50 }
  validate :valid_continent?

  def valid_continent?
    return if %w[America Asia Africa Europe Oceania Antarctica].include?(denomination.downcase.upcase_first)

    errors.add(:denomination, "it's not a valid continent")
  end
end
