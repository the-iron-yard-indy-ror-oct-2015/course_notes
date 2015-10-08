class Robot
  attr_accessor :name
  def say_hi
    "Hi"
  end
  def say_name
    "My name is #{name}"
  end
end
robot = Robot.new
robot.name
robot.name = "Bender"
class Robot
  attr_accessor :name
  def name
    "Robot #{@name}"
  end
  def say_hi
    "Hi"
  end
  def say_name
    "My name is #{name}"
  end
end
robot = Robot.new
robot.name = "George"
robot.name
robot.say_name
class Robot
  attr_accessor :name
  def say_hi
    "Hi"
  end
  def say_name
    "My name is #{name}"
  end
end
robot.name
robot.say_name
class ActorUnit < Robot
  def change_name(new_name)
    name = new_name
  end
end
robot = ActorUnit.new
robot.name = "Calculon"
robot.name
robot.change_name("Bender")
robot.name
exit
# Define a Robot class: A robot has a name
# A robot instance should have a method called ‘say_hi’ and it should return “Hi!”
# A robot instance should have a method called ‘say_name’ and it should return “My name is X” where X is the robot’s name
class Robot
  attr_accessor :name
  def name=(new_name)
    @name = new_name.upcase
  end
  def say_hi
    "Hi"
  end
  def say_name
    "My name is #{name}"
  end
end
# Define a BendingUnit class
# A BendingUnit inherits from Robot
class BendingUnit < Robot
  # A bending unit instance has a method called ‘bend’
  # The bend method has one argument ‘object_to_bend’
  # The bend method should puts to the console “Bend X!”
  def bend(object_to_bend)
    "Bend #{object_to_bend}!"
  end
end
# Define an ActorUnit class
# An ActorUnit inherits from Robot
class ActorUnit < Robot
  def name=(name)
    @name = "Actor #{name}"
  end
  def change_name(new_name)
    self.name = new_name
  end
end
robot = Robot.new
robot.name = "Bob"
robot.name
robot1
actor = ActorUnit.new
actor.name = "Jim"
actor.name
actor
robot
our_class = ["Ben", "Ben", "Michelle", "Lauren", "Matt", "Anna", "Shirley", "Angie"]
student_robots = []
our_class.each do |student|
  robot = Robot.new
  robot.name = student
  student_robots << robot
end
student_robots
our_class.collect do |student|
  robot = Robot.new
  robot.name = student
end
our_class.collect do |student|
  robot = Robot.new
  robot.name = student
  robot
end
robot
robot.name = "Howdy"
robot.name = "Doody"
class Robot
  attr_accessor :name, :height
  def height=(new_height=10)
    @height = new_height
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
end
robot = Robot.new
robot.height
class Robot
  attr_accessor :name
  def height
    @height || 10
  end
  def height=(new_height=10)
    @height = new_height
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
end
robot = Robot.new
robot.height
robot.height = 24
robot.height
robot.height =
robot.height = nil
robot.height
robot
robot.height = 3
robot
robot.height = nil
robot
100.times do |num|
  puts num
end
100.times do |num|
  num = num + 1
  if num % 15 == 0
    puts "FizzBuzz"
  elsif num % 5 == 0
    puts "Buzz"
  elsif num % 3 == 0
    puts "Fizz"
  else
    puts num
  end
end
numbers = (1..100)
numbers.each do |num|
  puts num
end
9/3
9 % 3
10 % 3
11 % 3
9/4
9.0/4.0
9 / 4
robot
robot = Robot.new
class Robot
  attr_accessor :name
  def initialize(name)
    self.name = name
  end
  def height
    @height || 10
  end
  def height=(new_height=10)
    @height = new_height
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
end
robot = Robot.new("Chris")
robot.name
robot = Robot.new
class Robot
  attr_accessor :name
  def initialize(x="Chris", height=10)
    self.name = x
    self.height = height
  end
  def height
    @height || 10
  end
  def height=(new_height=10)
    @height = new_height
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
end
robot = Robot.new
robot = Robot.new("Charles", 25)
robot.height
robot = Robot.new(25)
robot = Robot.new(nil, 25)
robot = Robot.new("", 25)
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
bender = BendingUnit.new("Bender")
class Factory
  def self.make_robots(array)
    array.collect do |name|
      Robot.new(name)
    end
  end
end
our_class
Factory.make_robots(our_class)
names = ["John", "George", "Paul", "Ringo", "Pete"]
Factory.make_robots(names)
beatle_bots = Factory.make_robots(names)
beatle_bots.first
beatle_bots.first.name
beatle_bots.first.say_hi
beatle_bots.first.say_name
class_bots = Factory.make_robots(our_class)
class_bots.select{|bot| bot.name.length == 3}
class_bots.reject{|bot| bot.name.length == 3}
class_bots.reject do |bot| bot.name.length == 3}
class_bots.reject do |bot|
  bot.name.length == 3
end
class_bots
class_bots.reject do |robot|
  if robot.name[0] == "B"
    true
  elsif robot.name[-1] == "E"
    true
  else
    false
  end
end
class_bots.collect do |robot|
  robot.name
end
class_bots.inject(0) do |sum, robot|
  sum = sum + robot.height
end
class_bots
class_bots.each do |robot|
  robot.say_hi
end
class_bots.each do |robot|
  puts robot.say_hi
end
class_bots.collect{|bot| bot.say_hi}.join(", ")
class_bots.collect{|bot| bot.say_hi}
class_bots.collect{|bot| bot.say_hi}.join(", ")
class_bot.inject(:+, :height)
class_bots.inject(:+, :height)
class_bots.inject(:+height)
class_bots.inject(:+)
class_bots.collect{|bot| bot.height}.inject(:+)
class_bots.map{|bot| bot.height}.reduce(:+)
class_bots.group_by{|robot| robot.name[0]}
class_bots.group_by{|robot| robot.name[0]}.each do |key, value|
  puts key + " :: " + value.length.to_s
end
class_bots.inject do |sum, robot|
  sum = sum + robot.height
end
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
end
robot = Robot.new("tall", 50)
robot2 = Robot.new("short", 5)
robot + robot2
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
  def <<(robot)
    self.height << robot.height
  end
end
robot << robot2
50 << 5
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
robot < robot2
robot
robot2
robot2 < robot
robot2<(robot)
robot2.send("<".to_sym, robot)
robot2 < robot
"23".to_i
:<
exit
require 'csv'
CSV.foreach("example.csv", headers: true) do |row|
  puts row
end
CSV.foreach("example.csv", headers: true) do |row|
  puts row.inspect
end
CSV.foreach("example.csv", headers: true) do |row|
  puts row.student
end
CSV.foreach("example.csv", headers: true) do |row|
  puts row["Student"]
end
heights = []
CSV.foreach("example.csv", headers: true) do |row|
  heights << row["Height"]
end
heights
CSV.foreach("example.csv") do |row|
  puts row.inspect
end
heights
heights.collect{|num| num.to_i}.inject(:+)
heights.collect{|num| num.to_i}.inject(0){|sum, x| sum = sum + x}
heights.inject(:+)
exit
