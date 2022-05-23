# frozen_string_literal: true

class Continents::Show < BaseService
  attr_reader :continent

  def initialize(args)
    @continent = Continent.find(args[:id])
  end

  def call
    image = continent.image.attached? ? continent.image.url : 'Has no image attached'
    continent.as_json.merge(image: image, countries: continent.countries)
  end
end
