10.times do
  puts "Howdy"
end
10.times do |num|
  puts num
end
10.times.class
array = [1,2,3,4,5,6,7,8,9]
another_array = [1,2,3,4,5,6,7,8,9]
array == another_array
other_array = [2,1,3,4,5,6,7,8,9]
array == other_array
other_array[0]
other_array.first
other_array.last
other_array[-1]
other_array.second
other_array[3]
exit
array = [1,2,3,4,5,6,7,8,9]
array = ["hi", "howdy", "wassup"]
array2 = ["howdy", "hi", "wassup"]
array.reverse
array.reverse.first
array.reverse[0]
array.last
array[0].reverse
array[0]
"hi".reverse
array[0].reverse
array
array[1]
array == array2
array
array2
"String"
string = "String"
string[2]
array
array2
array2 = ["total", "yup"]
array2.length
array
array.each do |string|
  puts string
end
array.each do |string|
  puts string.reverse
end
for string in array do
  puts string
end
array.each do |string|
  puts string.upcase
end
sentence = ""
array.each do |string|
  sentence << string
end
sentence
sentence = array.collect do |string|
  string
end
sentence
sentence = array.collect do |string|
  string.upcase
end
sentence = []
array.each do |string|
  sentence << string.downcase
end
short_words = []
array.each do |string|
  if string.length < 3
    short_words << string
  end
end
short_words
d_words = []
array.each do |string|
  if string.includes?("d")
    d_words << string
  end
end
array.each do |string|
  if string.include?("d")
    d_words << string\
array.each do |string|
  if string.include?("d")
    d_words << string
  end
end
d_words
array.reverse!
array
"Chris".include?("z")
"Chris".include?("h")
"Chris".include?("c")
nums = [1,2,3,4,5,6,7,8,9]
sum = 0
nums.each do |num|
  sum = sum + num
end
sum
nums.each do |num|
  sum = 0
  sum = sum + num
end
sum
sum = 1
nums.each do |num|
  sum = sum + num
end
sum
our_hash = {:key1 => 1, :key2 => 3}
hash2 = {:key2 => 3, :key1 => 1}
our_hash == hash2
array[1]
our_hash[:key1]
symbol = :our_symbol
symbol.class
symbol.length
symbol.reverse
hash2 = {:key2 => 3, :key1 => 1}
hash2 = {key2: 3, key1: 1}
hash2 = {key2: 3, key1: [1,2,3,4,5,6]}
hash2[:key1].each do |num|
  puts num
end
sum = 0
hash2[:key1].each do |num|
  sum = sum + num
end
sum
hash2
hash.each |thing|
puts thing
hash.each do |thing|
  puts thing
end
hash
hash2.each do |thing|
  puts thing
end
hash2.each do |key, value|
  puts key + " : " + value.to_s
end
hash2.each do |key, value|
  puts key.to_s + " : " + value.to_s
end
"sefrger"
"sefrger".to_sym
tv_shows = []
tv_shows << {title: "Lost", stars: ["Evangeline Lilly", "That guy", "Ben Linus", "Sawyer"]}
tv_shows << {title: "Sherlock", stars: ["Martin Freeman", "benedict Cumberbun"]}
tv_shows.length
tv_shows.first
tv_shows.last
tv_shows
tv_shows << {title: "Seinfeld", stars: ["Ben Linus", "jerry", "kramer"]}
[1,2,3,4,5].include?(3)
["Ben Linus", "martin Freeman", "yo"].include?("Ben Linus")
linus_shows = []
tv_shows.each do |hash|
  if hash[:stars].include?("Ben Linus")
    linus_shows << hash
  end
end
linus_shows
linus_shows = []
tv_shows.each do |hash|
  if hash[:stars].include?("Ben Linus")
    hash << linus_shows
  end
end
:symbol
hash3 = {"key1" => "hi", "key2" => "bye"}
hash3[:key1]
hash3["key1"]
"key1" == :key1
"key1" == :key1.to_s
"key1" == :key1.to_s!
our_symbol = :key1
"key1" == our_symbol
"key1" == our_symbol.to_s
our_symbol
our_symbol = our_symbol.to_s
our_symbol
linus_shows = []
tv_shows.each do |hash|
  if hash[:stars].include?("Ben Linus")
    hash >> linus_shows
  end
end
def linus_movies(tvshows)
  linus_shows = []
  tvshows.each do |show|
    if show[:stars].include?("Ben Linus")
      linus_shows << show[:title]
    end
  end
  linus_shows
end
tv_shows
linus_movies(tv_shows)
def star_movies(tvshows, star)
  our_movies = []
  tvshows.each do |show|
    if show[:stars].include?(star)
      our_movies << show[:title]
    end
  end
end
star_movies(tv_shows, "Sawyer")
def star_movies(tvshows, star)
end
tv_shows.each{ |hash| puts hash[:title] }
sentence = "our funky sentence of doom"
sentence.to_a
sentence.split(" ")
sentence.split(" ").each do |word|
  if word.length < 3
    puts "Hey shorty"
  end
end
sentence_array = sentence.split(" ")
reversed_words = []
sentence_array.each do |word|
  reversed_words << word.reverse
end
reversed_words
reversed_words.join(" ")
my_classes = {october2015: 8, june2015: 12}
my_classes[:june2015]
my_classes_array = [8,12]
my_classes_array[0]
my_classes[0]
my_classes
my_classes[0]
my_classes = {:june2015 => 12, :oct15 => 8}
my_classes2 = {june2015: 12, oct15: 8}
my_example = {symbol: :my_symbol}
our_array = ["Fred", "Margaret", "Sarah", "Martha", "Kenneth"]
def common_initial(array)
  first_letters = []
  array.each do |name|
    first_letters << name[0]
  end
  letters = {}
  first_letters.each do |letter|
    letters[letter] << letter
  end
  letters.max{|key, value| value.length}.value
end
common_initial(our_array)
def common_initial(array)
  first_letters = []
  array.each do |name|
    first_letters << name[0]
  end
  letters = {}
  first_letters.each do |letter|
    unless letters[letter]
      letters[letter] = []
    end
    letters[letter] << letter
  end
  letters.max{|key, value| value.length}.value
end
common_initial(our_array)
def common_initial(array)
  initials = []
  array.each do |name|
    initials << name[0]
  end
  initials.group_by{|initial| initial}.max{|key, value| value.length}.value
end
common_initial(our_array)
def common_initial(array)
  initials = []
  array.each do |name|
    initials << name[0]
  end
  initials.group_by{|initial| initial}.max{|group| group[1].length}[0]
end
common_initial(our_array)
array = [1,1,1,1,1,1,2,3,4,56,7,8,98,9]
array.uniq
array.class
array.methods
array.class
exit
