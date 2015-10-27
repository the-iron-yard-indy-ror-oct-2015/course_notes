class WelcomeController < ApplicationController

  def index
    render :text => "Hi world"
  end

  def current_time
    render :text => "The current time is #{7.days.ago}"
  end

  def hi_there
    @students = ["Matt", "Ben Doane", "Ben Barnett", "Shirley", "Anna", "Angie", "Michelle", "Lauren"]
  end

end
