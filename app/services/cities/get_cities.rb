# frozen_string_literal: true

class Cities::GetCities < BaseService
  attr_reader :params

  def initialize(args)
    @params = args
  end

  def call
    Cities::GetCitiesQuery.call(params)
  end
end
