# frozen_string_literal: true

# == Schema Information
#
# Table name: cities
#
#  id           :bigint           not null, primary key
#  denomination :string
#  land_area    :float
#  population   :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  country_id   :bigint           not null
#
# Indexes
#
#  index_cities_on_country_id  (country_id)
#
# Foreign Keys
#
#  fk_rails_...  (country_id => countries.id)
#
require 'test_helper'

class CityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
