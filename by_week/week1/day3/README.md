# Objects, like turtles, go all the way down

## Objects are everything; everything is an object

Ruby is an object-oriented programming language. So far, we had been doing our programming in a more procedural style (line-by-line, one after the other), but today we dove headlong into objects.

As I've been mentioning all along, _everything_ in Ruby is an object.

```ruby
"string".class
# String
23.class
# String
{our_hash: "Hey there"}.class
# Hash
{our_hash: "Hey there"}[:our_hash].class
# String
"string".methods
```

Each time we create a string, or anything in Ruby, really, we are creating an instance (or object) of a class.

In doing so, we bring along a ton of methods that are defined for instances of that class. Think of a class as a definition of an object - it includes definitions for what attributes those objects have, what methods they will respond to and so forth.

Here's an example class:

```ruby
class Person
end

person = Person.new
```

In the above, `person` is an _instance_ of our `Person` class. It's a Person object.

Right now, it doesn't have much - just what we get inherited from `Person`'s parent class (that'd be `Class`).

Ideally, a Person has some attributes. Things such as a name, an age, a weight, a height and so forth.

So, let's try to give our new person a name.

```ruby
person = Person.new
person.name
# NoMethodError
person.name = "Chuck"
# NoMethodError
```

Well, shucks. I guess we have to do some work here. `person.name` is calling a `name` method on a Person instance, but there is no `name` method.

So, let's define one:

```ruby
class Person

  def name
    @name
  end

end

person = Person.new
person.name
# nil
# Let's give him a name. Yay!
person.name = "Chuck"
# NoMethodError
```

`@name` is an instance variable. Instance variables exist only in the context of that particular instance/object. We start instance variables with an `@` to tell them apart from our regular variables (as in: `name`).

Hrm. It appears `name` and `name=` are two different methods, so let's create `name=` as well.

```ruby
class Person

  def name
    @name
  end

  def name=(arg)
    @name = arg
  end

end

person = Person.new
person.name
# nil
person.name = "Chuck"
# Works!
person.name
# Chuck
```

That works, but if we're going to have objects with more than a handful of attributes, we're going to be writing a ton of code to get that accomplished.

Ruby developers, like almost all developers, are inherently lazy. We never want to type more than we have to. So: There are some short cuts to the above.

```ruby
class Person

  attr_reader :name       # Creates `name`
  attr_writer :name       # Creates `name=`

end
```

That's still two lines of code, when it could be one:

```ruby
class Person

  attr_accessor :name     # Creates `name` _and_ `name=`

end

person = Person.new
person.name
# nil
person.name = "Chris"
person.name
# "Chris"
```

These attributes on a class' instances are really just instance methods, but it's better to think of the methods created this way as the nouns and adjectives of an object.

They _describe_ the object.

Now, let's make our person do something, like say their name.

```ruby
class Person
  attr_accessor :name

  def say_name
    "My name is #{name}"
  end

end

person = Person.new
person.name = "Chuck"
person.say_name
# "My name is Chuck"
```

`say_name` is a instance method. These sorts of instance methods are best thought of as the _verbs_ of an object. Less what they are and more how they act, how they behave and what they _do_.

You'll notice in the example above, we just used `name` in our string.

As we talked about previously, `attr_accessor` (under the hood), creates a `name` instance method that simply returns our `@name` instance variable. That's what we're calling here.

We could be more explicit with that, using `self.name`, but Ruby assumes that's what we meant when we left the `self.` off.

Here's another example:

```ruby
class Person

  attr_accessor :name

  def say_name
    "My name is #{name}"
  end

  def change_name(new_name)
    name = new_name
  end

end

person = Person.new
person.name = "Chuck"
person.say_name
# "My name is Chuck"
person.change_name("Charles")
person.say_name
# "My name is Chuck"
```

In this case, the name didn't change. This is because when we assign, Ruby's assumption is that we're assigning to a local variable (a variable that only exists in the method) of `name` rather than trying to call out to the `name=` instance method that `attr_accessor` made for us.

```ruby
class Person

  attr_accessor :name

  def say_name
    "My name is #{name}"
  end

  def change_name(new_name)
    self.name = new_name
  end

end

person = Person.new
person.name = "Chuck"
person.say_name
# "My name is Chuck"
person.change_name("Charles")
person.say_name
# "My name is Charles"
```

When we're more explicit, we can let Ruby know what we're really intending to do: To call the instance method `name=` on this particular instance of a Person.

If `self` is seeming a bit fuzzy, here's a [really good explanation](http://www.jimmycuadra.com/posts/self-in-ruby/)

OK. We have a person. Let's make a `Kid` class as well. Ideally, it would have the same attributes and methods as a person.

```ruby
class Kid < Person
end

kid = Kid.new
kid.name = "Benjamin"
kid.say_name
# "My name is Benjamin"
```

the `class Kid < Person` line makes Kid _inherit_ from Person. That means objects of our kid class will be endowed with all the methods of a Person object at, well, birth.

But, by making it a separate class, we can also override, change and give our objects special abilities.

```ruby
class Kid < Person

  def crawl(steps=10)
    "I crawled #{steps} steps"
  end

  def say_name
    "I am baby #{name}."
  end

end

kid = Kid.new("Benjamin")
kid.crawl
# I crawled 10 steps
kid.say_name
# "I am baby Benjamin."
person = Person.new("Chris")
person.crawl
# NoMethodError
person.say_name
# "My name is Chris"
```
