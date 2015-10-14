# Groups of things

Today, we're going to be chatting primarily about two core Ruby types: Arrays and Hashes.

And then we got a bit into methods.

## Arrays

Arrays are an ordered list of things. Pop open `irb` or `pry` and feast on the following:

```ruby
foodstuffs = ["burgers", "fries", "bratwurst", "coke"]
puts foodstuffs[0]
puts foodstuffs.first
puts foodstuffs[-1]
puts foodstuffs.last
foodstuffs.each do |food|
  puts "I like to consume #{food}."
end
puts foodstuffs[12]
```

I mentioned before that code block that arrays are _ordered_. That means that you can find a specific element of an array by its _index_ (that's the `[0]`) bit above. Try it with other number and see what you get.

The `[-1]` is a kind of special case, at least when you first run across it. But think about it, you're going one past the first item, which loops back around to the end of the array. Try other negative numbers and see what you get.

When you pick an index that isn't in the array, you'll get nothing (or `nil`).

Here are some other fun array things:

```ruby
breakfast = ["eggs", "bacon", "biscuits"]
lunch = ["ham salad", "chips", "fruit"]
dinner = ["pork chops", "baked beans", "mac and cheese"]
all_meals = breakfast + lunch + dinner
puts all_meals.inspect
skip_breakfast = all_meals - breakfast
puts skip_breakfast.inspect
skip_breakfast.include?("eggs")
all_meals.include?("bacon")
dessert = "apple pie"
all_meals << dessert
puts all_meals.inspect
```
### Other Array things touched on

* `array.pop`: Takes the last element out of the array and returns it. Also modifies the array itself to remove that item.
* `array.slice(x,y)`: Think of an array as a pie. Slice, well, slices from index `x` through index `y` and returns that slice.
* `array.join(thing)`: Turns an array into a string by, well, joining them with the string passed to it (`thing`).
* `array.include?(x)`: Does the array have `x` inside its members? returns `true` if so and `false` if not.

### Quick note on `!` methods and `?` methods

We mentioned `array.slice(x,y)` a second ago. It has a related method called `array.slice!(x,y)` that does the same thing, but _also_ changes the array it's called on.

So:

```ruby
our_array = [1,2,3,4,5]
our_array.split(1,3)
=> [2,3,4]
our_array
=> [1,2,3,4,5]
our_array.slice!(1,3)
=> [2,3,4]
our_array
=> [1,5]
```

Generally speaking in Rubyland, methods that end in `!` are _destructive_ - as in, they make changes to the object they are called upon in place. Ruby doesn't actually enforce this, but it's a common enough community best practice to be considered a rule.

Similarly, you'll find most methods that end in `?` will return boolean (`true`/`false`) responses. Again, nothing enforced, but a good community best practice.

## Hashes

If we think of arrays as a big bucket of stuff (ordered and indexed, but still a shapeless, formless bucket), it's cousin the Hash is more of a container for categories of things.

Another way to think of hashes are what some languages other than Ruby call similar things: Dictionaries.

```ruby
our_hash = {
  :class => ["Ben", "Ben", "Shirley", "Anna", "Michelle", "Matt", "Lauren", "Angela"],
  :instructor => "Chris",
  :campus_director => "Emily",
  :locations => ["475 East Market Street"]
}
```

With arrays, we can find a particular item of the array by its index, as in: `array[1]`. Hashes, however, are inherently unordered. An example:

```ruby
first_hash = {:item_one => "One", :item_two => "Two"}
second_hash = {:item_two => "Two", :item_one => "One"}
first_hash == second_hash
# true
first_array = [1,2,3]
second_array = [3,2,1]
first_array == second_array
# false
```

As such, items in a hash don't have indexes at all. Instead, they have _keys_. Those would the first part of the `{:item_two => "Two"}` pairs. So, you can access individual items through the keys instead.

```ruby
our_hash = {
  :class => ["Ben", "Ben", "Shirley", "Anna", "Michelle", "Matt", "Lauren", "Angela"],
  :instructor => "Chris",
  :campus_director => "Emily",
  :locations => ["475 East Market Street"]
}

our_hash[:class]
our_hash[:instructor]
```

The syntax for defining a hash in the previous examples (`{:old_fashioned => true}`) is the old fashioned way to do it. You can also save a few characters (assuming keys are a `:symbol`) with something more like this:

```ruby
our_new_hotness_hash = {symbol_keys: "easier", like_this: "saves characters"}
```

Now, hashes don't _technically_ require keys to be `:symbols`, but in 80% of cases, symbols work just fine and it's another of those Ruby community idioms. Stick with symbols until you have a good grasp for hashes (and a _damn good_ reason to do it).

### Other hash things touched on

* `hash.keys`: An array of all of the keys of the hash.
* `hash.values`: An array of all of the values of the hash.

## Enumerable

Both Hash and Array share a group of methods contained in the core Ruby module [`Enumerable`](http://ruby-doc.org/core-2.2.2/Enumerable.html).

Some of the immediately handy ones:

* `enumerable.each`: Loop (or iterate) through the enumerable and do whatever's in the block passed to it.
* `enumerable.collect`: Create a new array based on the result of the block passed to `collect`
* `enumerable.select`: Create a new array containing the objects for which the block passed to it return `true`.
* `enumerable.reject`: Create a new array without the objects for which the blocks passed to it return `true`.
* `enumerable.inject`: Well, we've talked about it, but it's kinda hard to explain in text.

## Methods

We took our first foray into methods today. Ruby defines methods like so:

```ruby
def our_fancy_method(arg1, arg2)
  "#{arg1} is #{arg2}"
end
```

In that pseudo-method above, our method is named `our_fancy_method` and it takes two arguments - which we assign to variables in the method of `arg1` and `arg2`.

Let's call our fake method a few ways:

```ruby
our_fancy_method("Ruby", "great")
# "Ruby is great"
our_fancy_method("Ruby")
# ArgumentError: wrong number of arguments (1 for 2)
our_fancy_method("Ruby", "freaking", "great")
# ArgumentError: wrong number of arguments (3 for 2)
```

As you can see, methods in Ruby have a set number of arguments and if you call a method with the incorrect number of arguments, you'll get an error.

There are ways around this, though. Here's one:

```ruby
def our_fancier_method(arg1, arg2="great")
  "#{arg1} is #{arg2}"
end

our_fancier_method("Ruby", "great")
# "Ruby is great"
our_fancier_method("Ruby")
# "Ruby is great"
our_fancy_method("Ruby", "freaking", "great")
# ArgumentError: wrong number of arguments (3 for 1..2)
```

Methods are the first way we're going to talk about to avoid repeating yourself (there'll be many more later, this is kind of a recurring theme). Essentially, when you find yourself doing the same thing over and over, you might be better off making it a method that can be reused.

The advantages for this are two-fold (primarily):

* Avoid repetition. Because typing _sucks_.
* Your bugs will just be in one spot. If you realize you need to fix or add something later (and you will), you'll be able to just change it in the method.

We'll chat more about methods tomorrow.
