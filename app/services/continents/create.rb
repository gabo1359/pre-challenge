# frozen_string_literal: true

class Continents::Create < BaseService
  attr_reader :params

  def initialize(args)
    @params = args
  end

  def call
    continent = Continent.new(params)
    if continent.valid?
      continent.save
      continent
    else
      continent.errors
    end
  end
end
