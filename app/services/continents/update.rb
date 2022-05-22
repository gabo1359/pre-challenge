# frozen_string_literal: true

class Continents::Update < BaseService
  attr_reader :continent, :params

  def initialize(args)
    @continent = Continent.find(args[:id])
    @params = args.except(:id)
  end

  def call
    if continent.update(params)
      continent
    else
      continent.errors
    end
  end
end
