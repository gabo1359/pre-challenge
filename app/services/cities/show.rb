# frozen_string_literal: true

class Cities::Show < BaseService
  attr_reader :city

  def initialize(args)
    @city = City.find(args[:id])
  end

  def call
    image = city.image.attached? ? city.image.url : 'Has no image attached'
    country = Country.find(city.country_id)
    city.as_json.merge(image: image, country: country, geographic_icons: city.geographic_icons)
  end
end
