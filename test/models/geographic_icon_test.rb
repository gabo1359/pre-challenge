# == Schema Information
#
# Table name: geographic_icons
#
#  id               :bigint           not null, primary key
#  date_of_creation :datetime
#  denomination     :string
#  height           :float
#  history          :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  city_id          :bigint           not null
#
# Indexes
#
#  index_geographic_icons_on_city_id  (city_id)
#
# Foreign Keys
#
#  fk_rails_...  (city_id => cities.id)
#
require "test_helper"

class GeographicIconTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
