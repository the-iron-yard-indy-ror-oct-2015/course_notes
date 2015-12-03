class DrinksController < ApplicationController

  def index
    @drinks = Drink.order("date DESC")
    @drink = Drink.new
    respond_to do |format|
      format.html {}
      format.json {
        render :json => @drinks.to_json
      }
    end
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
    params.require(:drink).permit(:name, :quantity, :date, :url_of_image, :image)
  end

end
