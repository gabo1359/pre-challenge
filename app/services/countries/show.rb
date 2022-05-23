# frozen_string_literal: true

class Countries::Show < BaseService
  attr_reader :country

  def initialize(args)
    @country = Country.find(args[:id])
  end

  def call
    image = country.image.attached? ? country.image.url : 'Has no image attached'
    country.as_json.merge(image: image, cities: country.cities)
  end
end
