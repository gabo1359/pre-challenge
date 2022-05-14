# frozen_string_literal: true

class Countries::Destroy < BaseService
  attr_reader :country

  def initialize(args)
    @country = Country.find(args[:id])
  end

  def call
    country.destroy
  end
end
