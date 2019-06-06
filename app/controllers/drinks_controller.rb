class DrinksController < ApplicationController
  def index
    @drinks = Drink.all.order(:created_at)
  end
end
