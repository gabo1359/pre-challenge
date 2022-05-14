# frozen_string_literal: true

class GeographicIconSerializer < ActiveModel::Serializer
  attributes :id, :denomination, :height, :history, :date_of_creation
end
