# frozen_string_literal: true

class GeographicIcons::GetGeographicIconsQuery < BaseQuery
  attr_reader :name, :date_of_creation, :cities

  def initialize(args)
    @name = args[:name]
    @date_of_creation = args[:date_of_creation]
    @cities = args[:cities].split(',') if args[:cities].present?
  end

  def call
    geographic_icons = cities.present? ? GeographicIcon.where(city_id: cities) : GeographicIcon.all
    geographic_icons = geographic_icons.where(denomination: name) if name.present?
    geographic_icons = geographic_icons.where(date_of_creation: date_of_creation) if date_of_creation.present?
    geographic_icons
  end
end
