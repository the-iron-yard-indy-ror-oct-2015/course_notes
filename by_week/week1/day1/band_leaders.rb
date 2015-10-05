artist = ARGV[0].dup if ARGV[0]
second_variable = ARGV[1].dup if ARGV[1]

if artist
  artist.downcase!
end

if second_variable
  second_variable = second_variable.to_i
end

puts artist
puts second_variable
puts second_variable.class

if artist == "trent" || artist == "terrence"
  puts "Terrence Trent D'Arby or Reznor?"
elsif artist == "david"
  puts "Bowie"
elsif artist == "paul"
  puts "John, George and Ringo"
else
  puts "I have no idea"
end
