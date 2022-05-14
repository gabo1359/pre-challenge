# frozen_string_literal: true

class GeographicIcons::Destroy < BaseService
  attr_reader :geographic_icon

  def initialize(args)
    @geographic_icon = GeographicIcon.find(args[:id])
  end

  def call
    geographic_icon.destroy
  end
end
