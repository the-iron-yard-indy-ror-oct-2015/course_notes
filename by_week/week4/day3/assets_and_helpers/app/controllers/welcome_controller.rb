class WelcomeController < ApplicationController

  # Lists the students in our class.
  def index
    @students = [
      "Matt",
      "Ben Doane",
      "Ben Barnett",
      "Shirley",
      "Anna",
      "Angie",
      "Michelle",
      "Lauren"
    ]
  end

end
