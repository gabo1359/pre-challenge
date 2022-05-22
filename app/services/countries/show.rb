# frozen_string_literal: true

class Countries::Show < BaseService
  attr_reader :country

  def initialize(args)
    @country = Country.find(args[:id])
  end

  def call
    country.as_json.merge(cities: country.cities)
  end
end
