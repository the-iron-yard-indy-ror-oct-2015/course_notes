class StudentController < ApplicationController

  def show
    if params[:name].blank?
      text = "Ain't nobody here"
    elsif params[:name].downcase == "matt"
      text = "twin"
    elsif params[:name].downcase == "ben"
      text = "which one?"
    elsif params[:name].downcase == "angie"
      text = "Harry Potter"
    else
      text = "They're awesome, too"
    end
    render :text => text
  end

end
