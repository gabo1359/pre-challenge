# frozen_string_literal: true

class GeographicIcons::GetGeographicIcons < BaseService
  attr_reader :params

  def initialize(args)
    @params = args
  end

  def call
    GeographicIcons::GetGeographicIconsQuery.call(params)
  end
end
