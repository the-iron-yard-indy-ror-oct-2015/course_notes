class StudentController < ApplicationController

  def show
    @student = params[:name]
  end

  def praise
    if params[:name].downcase == "lauren"
      @text = "Great questions"
    else
      @text = '¯\_(ツ)_/¯'
    end
  end

end
