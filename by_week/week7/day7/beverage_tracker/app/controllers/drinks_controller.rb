class DrinksController < ApplicationController

  def index
    @drinks = Drink.order("date DESC")
    @drink = Drink.new
  end

  def show
    @drink = Drink.find(params[:id])
  end

  def new
    @drink = Drink.new
  end

  def create
    @drink = Drink.new(drink_params)
    if @drink.save
      respond_to do |format|
        format.html {redirect_to root_url}
        format.js { }
      end
    else
      render "new"
    end
  end

  private

  def drink_params
    params.require(:drink).permit(:name, :quantity, :date)
  end

end
