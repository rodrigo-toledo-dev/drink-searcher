class DrinksController < ApplicationController
  def index
    @drinks = Drink.order(:name).page params[:page]
    respond_to do |format|
      format.html
      format.js { render action: "list" }
    end
  end

  def simple_filter
    @drinks = Drink.simple_filter(simple_filter_params).page params[:page]
    respond_to do |format|
      format.html { head :no_content }
      format.js { render action: "list" }
    end
  end

  def advanced_filter
    @drinks = Drink.advanced_filter(advanced_filter_params).page params[:page]
    respond_to do |format|
      format.html { head :no_content }
      format.js { render action: "list" }
    end
  end

  protected

    def simple_filter_params
      params.require(:filter).permit(:search)
    end

    def advanced_filter_params
      params.require(:filter).permit(:base_ingredient, :drinkware, :distilled, :origin, :alcohol_level, :temperature, :ibu)
    end
end
