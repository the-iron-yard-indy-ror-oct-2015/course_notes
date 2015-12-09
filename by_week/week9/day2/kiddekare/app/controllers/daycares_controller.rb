class DaycaresController < ApplicationController

  def index
    @daycares = Daycare.all
  end

  def show
    @daycare = Daycare.friendly.find(params[:id])
  end

end
