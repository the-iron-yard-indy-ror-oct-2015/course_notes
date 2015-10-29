class GoodbyeController < ApplicationController

  def show
    @person = params[:name]
    @colors = [
      Color.new("red"),
      Color.new("blue"),
      Color.new("green"),
      Color.new("yellow")
    ]
  end

  def mop
  end

end
