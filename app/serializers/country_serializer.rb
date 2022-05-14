# frozen_string_literal: true

class CountrySerializer < ActiveModel::Serializer
  attributes :denomination, :population
end
