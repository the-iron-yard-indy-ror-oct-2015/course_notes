our_class = ["Anna", "Shirley", "Ben", "Lauren", "Michelle", "Angie", "Ben", "Matt"]
our_class.each do |name|
  names = []
  if name.length < 5
    names << name
  end
  puts names
end
exit
our_class
short_names
exit
word_array
our_class
exit
four_words
exit
sentence = "Ruby is actually kind of fun once you get used to it."
four_words = []
word_array = sentence.split(" ")
word_array.each do |word|
  if word.length == 4
    four_words << word
  end
end
four_words
exit
movies
leo_movies
cheap_movies
exit
sentence
four_words(sentence)
four_words("Hi there, folks. I don't know that this sentence has many four letter words."
)
exit
howdy_many_words(sentence, 4)
how_many_words(sentence, 4)
how_many_words(sentence, 3)
how_many_words(sentence, 6)
how_many_words(sentence)
exit
how_many_words(sentence)
how_many_words(sentence, 2)
how_many_words(sentence, 2, 12)
exit
how_many_words
exit
how_many_words
our_words = how_many_words(sentence)
our_words
our-words.sort
our_words.sort
our_words.sort_by{|word| word[0]}
our_words = our_words.sort_by{|word| word[0]}
our_words
exit
our_class.select{ |name| name.length < 5 }
sentence
sentence.split(" ").select{ |word| word.length == 4 }
sentence.split.select{ |word| word.length == 4 }
sentence.split
sentence.split(" ")
sentence.split("d")
sentence.split.select{ |word| word.length == 4 }
movies.select{ |hash| hash[:budget] < 100 }
movies.select{ |hash| hash[:budget] < 100 }.collect{ |film| film[:title] }
movies.select{ |hash| hash[:stars].include?("Leonardo DiCaprio") }.collect{ |film| film[:title] }
total_budget = movies.inject(0){|sum, hash| sum + hash[:budget]}
movies
sum = 0
movies.each do |hash|
  sum = sum + hash[:budget]
end
sum
exit
"string".class
"string".send(:class)
"string".methods
"string".object_id
main.class
class
main:Object
Object
[1,2,3,4,5,6].class
[1,2,3,4,5,6][0].class
[1,2,3,4,5,6][0].send(:class)
[1,2,3,4,5,6][0].send(:classy)
[1,2,3,4,5,6][0].class
[1,2,3,4,5,6][0]
[1,2,3,4,5,6].first
[1,2,3,4,5,6].send(:first)
[1,2,3,4,5,6].send("[0]".to_sym)
[1,2,3,4,5,6].send([0].to_sym)
[1,2,3,4,5,6].class
[1,2,3,4,5,6][0].class
def hi_there(name)
  puts "Howdy, #{name}"
end
hi_there("Shirley")
class Person
end
person = Person.new
person.methods
person.name
person.name = "Chris"
person.name("Chris")
class Person
  def name
    "Chris"
  end
end
person = Person.new
person.name
person.name = "Johnny Football"
class Person
  def name
    "Chris"
  end
  def name=(our_name)
  end
end
person = Person.new
person.name = "Billy"
"string".length
person.name
class Person
  def name
    @name
  end
  def name=(new_name)
    @name = new_name
  end
end
person = Person.new
person.name
person.name = "Chuck"
person.name
person2 = Person.new
person2 == person
person2.name
person2.name = "Charles"
person2.name
person2.name.length
person2.name.length % 2
6 % 2
9 % 2
person2.name.length.to_s.to_a.collect{|s| s.to_f}.first
"string".length
6.length
class Person
  attr_reader :weight
  attr_writer :weight
  def name
    @name
  end
  def name=(new_name)
    @name = new_name
  end
  def height
    @height
  end
  def height=(new_height)
    @height = new_height
  end
end
person = Person.new
person.name = "Chris"
person.height = 63
person.weight = 78
person.weight
class Person
  attr_reader :weight
  attr_writer :weight
  attr_accessor :eye_color, :hair_color, :shoe_size
  def name
    @name
  end
  def name=(new_name)
    @name = new_name
  end
  def height
    @height
  end
  def height=(new_height)
    @height = new_height
  end
  def speak(text)
    system("say \"#{text}\"")
  end
  en
  d
class Person
  attr_reader :weight
  attr_writer :weight
  attr_accessor :eye_color, :hair_color, :shoe_size
  def name
    @name
  end
  def name=(new_name)
    @name = new_name
  end
  def height
    @height
  end
  def height=(new_height)
    @height = new_height
  end
  def speak(text)
    system("say \"#{text}\"")
  end
end
person = Person.new
person.speak("Hi folks. I know this is confusing")
class Person
  attr_reader :weight
  attr_writer :weight
  attr_accessor :eye_color, :hair_color, :shoe_size
  def name
    @name
  end
  def name=(new_name)
    @name = new_name
  end
  def height
    @height
  end
  def height=(new_height)
    @height = new_height
  end
  def speak(text)
    system("say \"#{text}\"")
  end
  def length
    height/12
  end
end
person = Person.new
person.height = 60
person.length
class Kid < Person
end
kid = Kid.new
kid.height = 25
kid.weight = 225
kid.eye_color = "Hazel"
kid.speak("Hi folks")
class Kid < Person
  def speak(text)
    system("say 'waah waah waah'")
  end
end
kid = Kid.new
kid.speak("This will never be said")
person = Person.new
person.speak("This will")
class Person
  attr_reader :weight
  attr_writer :weight
  attr_accessor :eye_color, :hair_color, :shoe_size
  def name
    @name
  end
  def name=(new_name)
    @name = new_name
  end
  def height
    @height
  end
  def height=(new_height)
    @height = new_height
  end
  def speak(text)
    system("say \"#{text}\"")
  end
  def length
    height/12
  end
  def walk(miles=500)
    "I would walk #{miles} miles"
  end
end
class Kid < Person
  def speak(text)
    system("say 'waah waah waah'")
  end
  def walk(steps=0)
    "I don't walk. I _crawl_."
  end
  def crawl(feet=2)
    "I would crawl #{feet} feet"
  end
end
person = Person.new
person.walk
person.walk(1000)
kid = Kid.new
kid.walk
kid.walk(132446464675685)
kid.crawl
person.crawl
class Mutant < Person
  def walk(miles=500)
    "I would shamble #{miles*20} miles"
  end
end
mutie = Mutant.new
mutie.walk(1000)
person = Person.new
person.walk(1000)
mutie.name = "Scott Summers"
mutie.name
class Mutant < Person
  attr_accessor :super_powers
  def walk(miles=500)
    "I would shamble #{miles*20} miles"
  end
end
mutie
mutie.super_powers
mutie.super_powers = ["assholeness", "laser eyes", "poor leadership", "falls in lvoe with clones"]
mutie.super_powers = ["assholeness", "laser eyes", "poor leadership", "falls in love with clones"]
mutie.super_powers
mutie.super_powers = "assholeness"
mutie.super_powers
class Person
  attr_reader :weight
  attr_writer :weight
  attr_accessor :eye_color, :hair_color, :shoe_size
  def name
    @name
  end
  def name=(new_name)
    @name = new_name
  end
  def height
    @height
  end
  def height=(new_height)
    @height = new_height
  end
  def speak(text)
    system("say \"#{text}\"")
  end
  def length
    height/12
  end
  def walk(miles=500)
    "I would walk #{miles} miles"
  end
  def jump(how_high=nil)
    if how_high
      "I jumped #{how_high} meters high!"
    else
      "But I want to _jump_!"
    end
  end
end
person = Person.new
person.jump(12)
person.jump
kid.jump
kid = Kid.new
kid.jump
kid.jump(23)
class Kid < Person
  def speak(text)
    system("say 'waah waah waah'")
  end
  def walk(steps = 0)
    "I don't walk. I _crawl_."
  end
  def crawl(feet = 2)
    "I would crawl #{feet} feet"
  end
  def jump(how_high=nil)
    if how_high && how_high > 0
      if how_high <= 2
        "Yay! I jumped #{how_high} feet!"
      else
        "But ... I can't jump that high ..."
        system("say 'waaah waah waaaaaaaaaaaaaaaaaaaaaaah'")
      end
    else
      "But I want to _jump_!"
    end
  end
end
kid = Kid.new
kid.jump
kid.jump(3)
class Kid < Person
  def speak(text)
    system("say 'waah waah waah'")
  end
  def walk(steps = 0)
    "I don't walk. I _crawl_."
  end
  def crawl(feet = 2)
    "I would crawl #{feet} feet"
  end
  def jump(how_high=nil)
    if how_high && how_high > 0
      if how_high <= 2
        "Yay! I jumped #{how_high} feet!"
      else
        system("say 'waaah waah waaaaaaaaaaaaaaaaaaaaaaah'")
        "But ... I can't jump that high ..."
      end
    else
      "But I want to _jump_!"
    end
  end
end
kid = Kid.new
kip.jump
kid.jump
kid.jump(2)
kid.jump(12)
kid.jump(-12)
kid.jump(0)
kid.jump(1)
kid.jump(1.7)
1.7
1
1.7.class
1.class
exit
