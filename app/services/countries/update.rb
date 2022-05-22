# frozen_string_literal: true

class Countries::Update < BaseService
  attr_reader :country, :params

  def initialize(args)
    @country = Country.find(args[:id])
    @params = args.except(:id)
  end

  def call
    if country.update(params)
      country
    else
      country.errors
    end
  end
end
