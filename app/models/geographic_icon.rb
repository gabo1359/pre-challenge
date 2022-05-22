# frozen_string_literal: true

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
class GeographicIcon < ApplicationRecord
  belongs_to :city

  validates :denomination, presence: true, length: { maximum: 50 }
  validates :date_of_creation, format: { with: /\d{4}(-(\d){2}){2}/, message: 'yyyy-mm-dd format' }
  validates :height, presence: true, numericality: true
  validates :history, presence: true
end
