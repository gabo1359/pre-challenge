# frozen_string_literal: true

class GeographicIcons::Create < BaseService
  attr_reader :params

  def initialize(args)
    @params = args
  end

  def call
    geographic_icon = GeographicIcon.new(params)
    if geographic_icon.valid?
      geographic_icon.save
      geographic_icon
    else
      geographic_icon.errors
    end
  end
end
