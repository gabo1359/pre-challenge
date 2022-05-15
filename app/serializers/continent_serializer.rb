# frozen_string_literal: true

# == Schema Information
#
# Table name: continents
#
#  id           :bigint           not null, primary key
#  denomination :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class ContinentSerializer < ActiveModel::Serializer
  attributes :denomination
end
