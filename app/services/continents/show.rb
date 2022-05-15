# frozen_string_literal: true

class Continents::Show < BaseService
  attr_reader :continent

  def initialize(args)
    @continent = Continent.find(args[:id])
  end

  def call
    continent.as_json.merge(countries: continent.countries)
  end
end
