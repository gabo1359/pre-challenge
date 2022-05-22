# frozen_string_literal: true

class Countries::GetCountries < BaseService
  attr_reader :params

  def initialize(args)
    @params = args
  end

  def call
    Countries::GetCountriesQuery.call(params)
  end
end
