# frozen_string_literal: true

# == Schema Information
#
# Table name: countries
#
#  id           :bigint           not null, primary key
#  denomination :string
#  land_area    :float
#  population   :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  continent_id :bigint           not null
#
# Indexes
#
#  index_countries_on_continent_id  (continent_id)
#
# Foreign Keys
#
#  fk_rails_...  (continent_id => continents.id)
#
class CountrySerializer < ActiveModel::Serializer
  attributes :denomination, :population
end
