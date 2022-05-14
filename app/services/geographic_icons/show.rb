# frozen_string_literal: true

class GeographicIcons::Show < BaseService
  attr_reader :geographic_icon

  def initialize(args)
    @geographic_icon = GeographicIcon.find(args[:id])
  end

  def call
    city = City.find(geographic_icon.city_id)
    country = Country.find(city.country_id)
    geographic_icon.as_json.merge(city: city, country: country)
  end
end
