# Define a Robot class: A robot has a name
# A robot instance should have a method called ‘say_hi’ and it should return “Hi!”
# A robot instance should have a method called ‘say_name’ and it should return “My name is X” where X is the robot’s name

class Robot

  attr_accessor :name, :height

  def initialize(x="Chris", height=10)
    self.name = x
    self.height = height
  end

  def name=(new_name)
    @name = new_name.upcase
  end

  def say_hi
    "Hi"
  end

  def say_name
    "My name is #{name}"
  end

  def +(robot)
    self.height + robot.height
  end

  def <(robot)
    self.height < robot.height
  end

end

# Define a BendingUnit class
# A BendingUnit inherits from Robot
class BendingUnit < Robot

  attr_accessor :is_robot

  def initialize(name, height=25)
    self.name = name
    self.height = height
    self.is_robot = true
  end

  # A bending unit instance has a method called ‘bend’
  # The bend method has one argument ‘object_to_bend’
  # The bend method should puts to the console “Bend X!”
  def bend(object_to_bend)
    "Bend #{object_to_bend}!"
  end

end


# Define an ActorUnit class
# An ActorUnit inherits from Robot

# An ActorUnit instance has a method called ‘change_name’
# The ‘change_name’ method accepts an argument ‘new_name’
# The ‘change_name’ method changes the name property of the robot to ‘new_name’

class ActorUnit < Robot

  def name=(name)
    @name = "Actor #{name}"
  end

  def change_name(new_name)
    self.name = new_name
  end

end


# Hard Mode
# Take our student array from yesterday and (programmatically) create robots out of all of them and store them in an array.

our_class = ["Ben", "Ben", "Michelle", "Lauren", "Matt", "Anna", "Shirley", "Angie"]
student_robots = []
our_class.each do |student|
  robot = Robot.new
  robot.name = student
  student_robots << robot
end
student_robots

# Do the previous using an Enumerable method other than each

our_class.collect do |student|
  robot = Robot.new
  robot.name = student
  robot
end

# Robots should also have a height, with a default value of 10

class Factory

  def self.make_robots(array)
    array.collect do |name|
      Robot.new(name)
    end
  end

end
