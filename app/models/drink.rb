class Drink < ApplicationRecord
  validates :name, :description, :image_url, presence: true
  validates :rating_avg, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  validates :alcohol_level, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
  # Bitterness level
  validates :ibu, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }

  enum temperature: %i[
    hot
    warm
    ambient
    cold
    extra_cold
  ]
end
