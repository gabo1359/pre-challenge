# frozen_string_literal: true

class Cities::Update < BaseService
  attr_reader :city, :params

  def initialize(args)
    @city = City.find(args[:id])
    @params = args.except(:id)
  end

  def call
    if city.update(params)
      city
    else
      city.errors
    end
  end
end
