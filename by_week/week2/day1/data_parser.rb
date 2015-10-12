#!/usr/bin/env ruby

require 'csv'

class Delivery

  attr_accessor :planet, :shipped, :quantity, :paid, :pilot

  def initialize(row)
    self.planet = row["Destination"]
    self.shipped = row[" What got shipped"]
    self.quantity = row[" Number of crates"].to_i
    self.paid = row[" Money we made"].to_i
    set_pilot
  end

  def set_pilot
    self.pilot = "Fry" if planet == "Earth"
    self.pilot = "Amy" if planet == "Mars"
    self.pilot = "Bender" if planet == "Uranus"
    unless self.pilot
      self.pilot = "Leela"
    end
  end

  def bonus
    paid * 0.1
  end

  def self.bonus_by_pilot(deliveries, this_pilot)
    deliveries.select{|delivery| delivery.pilot == this_pilot}.inject(0){|sum, x| sum = sum + x.bonus}
  end

  def self.deliveries_by_pilot(deliveries, this_pilot)
    deliveries.select{|delivery| delivery.pilot == this_pilot}.length
  end

  def self.planet_total(deliveries, this_planet)
    deliveries.select{|d| d.planet == this_planet}.inject(0){|sum, x| sum = sum + x.paid}
  end

end

class Parse

  def self.pilots
    @deliveries.collect{|delivery| delivery.pilot}.uniq
  end

  def self.planets
    @deliveries.collect{|delivery| delivery.planet}.uniq
  end

  def self.parse_data(file_name)
    @deliveries = CSV.foreach(file_name, headers: true).collect{|row| Delivery.new(row)}
    puts weekly_total
    puts pilot_totals
    puts pilot_trips
    puts planet_totals
  end

  def self.weekly_total
    "We made #{@deliveries.collect{|x| x.paid}.inject(:+)} units this week!"
  end

  def self.pilot_totals
    pilot_string = pilots.collect do |pilot|
      "#{pilot} made a bonus of #{Delivery.bonus_by_pilot(@deliveries, pilot)} this week"
    end
    pilot_string.join("\n")
  end

  def self.pilot_trips
    pilot_string = pilots.collect do |pilot|
      "#{pilot} made #{Delivery.deliveries_by_pilot(@deliveries, pilot)} deliveries this week"
    end
    pilot_string.join("\n")
  end

  def self.planet_totals
    planet_string = planets.collect do |planet|
      "We made #{Delivery.planet_total(@deliveries, planet)} travelling to #{planet} this week"
    end
    planet_string.join("\n")
  end

end

Parse.parse_data(ARGV[0])
