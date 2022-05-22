# frozen_string_literal: true

class Cities::Destroy < BaseService
  attr_reader :city

  def initialize(args)
    @city = City.find(args[:id])
  end

  def call
    city.destroy
  end
end
