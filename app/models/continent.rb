class Continent < ApplicationRecord
  has_many :countries
  has_many :cities, through: :countries
  has_many :geographic_icons, through: :countries

  validates :denomination, presence: true, length: { maximum: 50 }
  validate :valid_continent?

  def valid_continent?
    unless %w(America Asia Africa Europe Oceania Antarctica).include?(denomination.downcase.upcase_first)
      errors.add(:denomination, "It's not a valid continent")
    end
  end
end
