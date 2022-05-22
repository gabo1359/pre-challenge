# frozen_string_literal: true

class Cities::GetCitiesQuery < BaseQuery
  attr_reader :name, :countries, :order

  def initialize(args)
    @name = args[:name]
    @countries = args[:countries].split(',') if args[:countries].present?
    @order = args[:order]
  end

  def call
    cities = countries.present? ? City.where(country_id: countries) : City.all
    cities = ordered_cities(cities) if order.present?
    cities = cities.where(denomination: name) if name.present?
    cities
  end

  private

  def ordered_cities(cities)
    order == 'desc' ? cities.order(denomination: :desc) : cities.order(:denomination)
  end
end
