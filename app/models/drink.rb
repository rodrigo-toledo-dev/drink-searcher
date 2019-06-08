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

  def self.simple_filter(filters)
    drinks = self.unscoped
    unless filters[:search].blank?
      drinks = drinks.where('(name ILIKE :q OR
        base_ingredient ILIKE :q OR
        description ILIKE :q OR
        drinkware ILIKE :q OR
        origin ILIKE :q)', q: "%#{filters[:search]}%")
    end
    drinks.order(:name)
  end

  def self.advanced_filter(filters)
    drinks = self.unscoped
    unless filters[:base_ingredient].blank?
      drinks = drinks.where('(name ILIKE :q OR base_ingredient ILIKE :q OR description ILIKE :q)', q: "%#{filters[:base_ingredient]}%")
    end

    unless filters[:drinkware].blank?
      drinks = drinks.where('drinkware ILIKE :q', q: "%#{filters[:drinkware]}%")
    end

    unless filters[:origin].blank?
      drinks = drinks.where('origin ILIKE :q', q: "%#{filters[:origin]}%")
    end

    unless filters[:distilled].blank?
      drinks = drinks.where(distilled: filters[:distilled])
    end

    unless filters[:alcohol_level].blank?
      drinks = drinks.where(alcohol_level: filters[:alcohol_level])
    end

    unless filters[:temperature].blank?
      drinks = drinks.where(temperature: filters[:temperature])
    end

    drinks.order(:created_at)
  end
end
