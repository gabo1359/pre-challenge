# frozen_string_literal: true

class Countries::GetCountriesQuery < BaseQuery
  attr_reader :continents, :name, :order

  def initialize(args)
    @continents = args[:continents].split(',') if args[:continents].present?
    @name = args[:name]
    @order = args[:order]
  end

  def call
    countries = continents.present? ? Country.where(continent_id: continents) : Country.all
    countries = ordered_countries(countries) if order.present?
    countries = countries.where(denomination: name) if name.present?
    countries
  end

  private

  def ordered_countries(countries)
    order == 'desc' ? countries.order(denomination: :desc) : countries.order(:denomination)
  end
end
