# frozen_string_literal: true

class Continents::Destroy < BaseService
  attr_reader :continent

  def initialize(args)
    @continent = Continent.find(args[:id])
  end

  def call
    continent.destroy
  end
end
