require 'pry'

# Create an array of all of the students in our class. Assign it to a variable named “our_class”.

our_class = ["Anna", "Lauren", "Shirley", "Ben", "Ben", "Angie", "Michelle", "Matt"]

# Find all the students whose first name is less than 5 characters

short_names = []
our_class.each do |student|
  if student.length < 5
    short_names << student
  end
end
short_names

# Turn a sentence into an Array, and select the words that are four characters long. Here’s your sentence: sentence = "Ruby is actually kind of fun once you get used to it."

sentence = "Ruby is actually kind of fun once you get used to it."

four_words = []
word_array = sentence.split(" ")
word_array.each do |word|
  if word.length == 4
    four_words << word
  end
end
four_words

# Create an array of movies with budgets of less than 100 and another array of movies that starred Leonard DiCaprio.
# movies = [] movies << { title: "Forest Gump", budget: 55, stars: ["Tom Hanks"] } movies << { title: "Star Wars", budget: 11, stars: ["Mark Hamill", "Harrison Ford"] } movies << { title: "Batman Begins", budget: 150, stars: ["Christian Bale", "Liam Neeson", "Michael Caine"] } movies << { title: "Titanic", budget: 200, stars: ["Kate Winslet", "Leonardo DiCaprio"] } movies << { title: "Inception", budget: 160, stars: ["Leonardo DiCaprio", "JGL"] }

movies = []
movies << {
  title: "Forest Gump",
  budget: 55,
  stars: ["Tom Hanks"]
}
movies << {
  title: "Star Wars",
  budget: 11,
  stars: ["Mark Hamill", "Harrison Ford"]
}
movies << {
  title: "Batman Begins",
  budget: 150,
  stars: ["Christian Bale", "Liam Neeson", "Michael Caine"]
}
movies << {
  title: "Titanic",
  budget: 200,
  stars: ["Kate Winslet", "Leonardo DiCaprio"]
}
movies << {
  title: "Inception",
  budget: 160,
  stars: ["Leonardo DiCaprio", "JGL"]
}

cheap_movies = []
movies.each do |hash|
  if hash[:budget] < 100
    cheap_movies << hash[:title]
  end
end
cheap_movies

leo_movies = []
movies.each do |hash|
  if hash[:stars].include?("Leonardo DiCaprio")
    leo_movies << hash[:title]
  end
end
leo_movies

# Hard Mode
# Make a method that will always return the words in a String that contain four characters. Called as: four_words(text)

def four_words(text)
  four_words = []
  word_array = text.split(" ")
  word_array.each do |word|
    if word.length == 4
      four_words << word
    end
  end
  four_words
end


# Make a method that will return the words in a String that are x characters long (as in: how_many_words(text, num))

def how_many_words(text="I'm a cheeky monkey, dude", num=4)
  x_words = []
  word_array = text.split(" ")
  word_array.each do |word|
    if word.length == num
      x_words << word
    end
  end
  x_words
end


# What’s the total budget of our movies?

sum = 0
movies.each do |hash|
  sum = sum + hash[:budget]
end
sum

# Nightmare Mode
# Go take a look at Enumerable. Rewrite Normal Mode using more of those methods (hint: they can all be done on one line).

our_class.select{ |name| name.length < 5 }
sentence.split(" ").select{ |word| word.length == 4 }
movies.select{ |hash| hash[:budget] < 100 }.collect{ |film| film[:title] }
movies.select{ |hash| hash[:stars].include?("Leonardo DiCaprio") }.collect{ |film| film[:title] }
movies.inject(0){|sum, hash| sum + hash[:budget]}
