# frozen_string_literal: true

class Cities::Create < BaseService
  attr_reader :params

  def initialize(args)
    @params = args
  end

  def call
    city = City.new(params)
    if city.valid?
      city.save
      city
    else
      city.errors
    end
  end
end
