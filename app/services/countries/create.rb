# frozen_string_literal: true

class Countries::Create < BaseService
  attr_reader :params

  def initialize(args)
    @params = args
  end

  def call
    country = Country.new(params)
    if country.valid?
      country.save
      country
    else
      country.errors
    end
  end
end
