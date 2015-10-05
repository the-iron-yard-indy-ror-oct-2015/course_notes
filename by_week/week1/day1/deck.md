# Intro to Ruby
### (and the command line)
#### (and the Mac)

---

# Command line basics

* `cd`: **C**hange **d**irectory
* `ls`: **L**ist
* `~`: Your home directory (`/Users/<YOUR_USERNAME>`)
* `..`: One directory up
* `!!`: The last command you ran

## http://bit.ly/TIYIndy-CLI

---

# Mac Basics

* `⌘-C`: Copy
* `⌘-V`: Paste
* `⌘-Tab`: Application switcher
* `⌘-Space`: Spotlight (search)
* `⌘-S`: Save (_"Hit 'Save' every paragraph—AND every time you think of it."_)

---

![](http://i.giphy.com/4z2q3ySidli5q.gif)
# **And now for the main event**

---

# What is Ruby?

* Ruby is a scripting language
* Ruby is dynamically typed
* Ruby is object-oriented
* Ruby don't care

---

# Variables & Assignment

```ruby
	a = 3
    b = 4
    c = a + b
    b = 6
```

* What's `c`?
* 7. `c` is assigned before `b`'s value is changed.

---

# Strings

Strings are collections of characters

```ruby
string = "This is a string."
string = 'This, too, is a string.'
string = %Q(This is a string as well. And equivalent to the first.)
string = %q(Also a string, and equivalent to the second.)
string = String.new("A long way around to write a string")
string = String.send(:new, "Under the hood of all the above")
```

---

# String concantenation

Let's add strings together.

```ruby
	"The string starts with T" + " and ends with A"
	# "The string starts with T and ends with A"
	a = "Andrew Luck"
	a + " plays quarterback for the Indianapolis Colts."
	# "Andrew Luck plays quarterback for the Indianapolis Colts."
	"The Colts' quarterback, " + a + ", is injured."
	# "The Colts' quarterback, Andrew Luck, is injured."
```

---

# String interpolation

Ruby also let's you jam strings together more _succinctly_.

```ruby
	a = "Andrew Luck"
	"The Colts' quarterback, #{a}, is injured."
	# "The Colts' quarterback, Andrew Luck, is injured."
```

* Note the `"` ... they _matter_.

---

# Equality

```ruby
	a = 3
	b = 3
	a == b
	# true
	c = 5
	a == c
	# false
```

---

# A note on truthiness

---

![](http://i.giphy.com/12QgPOiTa7Ab04.gif)

---

* Most things in Ruby are "true"
* Like `true` and defined things.
* The exceptions:
	* `false`
	* `nil`

---

# Control flow

```ruby
if our_character == "thing one"
    puts "Flying a kite"
elsif our_character == "thing two"
    puts "All kinds of bad tricks"
elsif our_character == "the cat in the hat"
    puts "Knows a lot about that"
else
    puts "All quiet on the Western front"
end
```

---

```ruby
case our_character
when "thing one"
    puts "Flying a kite"
when "thing two"
    puts "All kinds of bad tricks"
when "the cat in the hat"
    puts "Knows a lot about that"
else
    puts "All quiet on the Western front"
end
```

---

# IRB

* `irb` in Terminal
* Interactive Ruby playground

---

![](http://i.giphy.com/13GIgrGdslD9oQ.gif)
# **Let's code**

---

# Homework

We're trying something new.

Go sign up here:

[http://bit.ly/TIYIndy-HW](http://bit.ly/TIYIndy-HW)

---

![](http://i.giphy.com/JKSaYOkCHcblK.gif)
# **Let's eat**
