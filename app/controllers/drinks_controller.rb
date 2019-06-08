class DrinksController < ApplicationController
  def index
    @drinks = Drink.order(:created_at)
  end

  def advanced_filter
    @drinks = Drink.advanced_filter(advanced_filter_params)
    respond_to do |format|
      format.html { head :no_content }
      format.js
    end
  end

  protected

    def advanced_filter_params
      params.require(:advanced_filter).permit(:base_ingredient, :drinkware, :distilled, :origin, :alcohol_level, :temperature, :ibu)
    end
end
