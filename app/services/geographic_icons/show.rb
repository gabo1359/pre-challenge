# frozen_string_literal: true

class GeographicIcons::Show < BaseService
  attr_reader :geographic_icon

  def initialize(args)
    @geographic_icon = GeographicIcon.find(args[:id])
  end

  def call
    image = geographic_icon.image.attached? ? geographic_icon.image.url : 'Has no image attached'
    city = City.find(geographic_icon.city_id)
    country = Country.find(city.country_id)
    geographic_icon.as_json.merge(image: image, city: city, country: country)
  end
end
