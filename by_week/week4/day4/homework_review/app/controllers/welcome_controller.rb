class WelcomeController < ApplicationController

  def index
    @topic = "views"
    @color = params[:color] || "blue"
  end

end
