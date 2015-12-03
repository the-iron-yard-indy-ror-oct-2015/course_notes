class LegoSetsController < ApplicationController

  def create
    @lego_set = LegoSet.new(lego_set_params)
    if @lego_set.save
      render json: @lego_set
    else
      render json: @lego_set.errors
    end
  end

  def index
    @lego_sets = LegoSet.all
    render json: @lego_sets
  end


  private

  def lego_set_params
    params.require(:lego_set).permit(:name, :cost, :date_procured)
  end

end
