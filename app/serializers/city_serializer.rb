# frozen_string_literal: true

class CitySerializer < ActiveModel::Serializer
  attributes :denomination, :population
end
