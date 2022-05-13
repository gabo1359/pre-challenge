class GeographicIcon < ApplicationRecord
  belongs_to :city

  validates :denomination, presence: true, length: { maximum: 50 }
  validates :date_of_creation, format: { with: /\d{4}(-(\d){2}){2}/, message: 'yyyy-mm-dd format' }
  validates :height, presence: true, numericality: true
  validates :history, presence: true
end
