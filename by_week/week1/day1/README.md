# The core of Ruby

Hi. First day of The Iron Yard. Welcome aboard!

These notes (written well ahead of time) are about the topics covered on the very first day of class. At least the Ruby bits. We had some other class rules and welcomes before this, mind you.

On with the notes.

## irb and you

Ruby's `irb`[^irb-def] - along with Rails' `console` when we get to it - is going to be your bestest friend for a very long time.

It lets you easily sketch things out and play around with Ruby. We'll be using it quite a bit in the early days of class (and you'll keep using it in the future, trust me ... it's handy).

So, type `irb` on your command line and you should get something like this:

`irb(main):001:0>`

That's a Ruby prompt, and you can put whatever Ruby code you'd like after that and have it evaluated. For instance, try the following:

```
x = 4
y = 2
x/y
```

Woo, math!

Or try this:

```
10.times do |num|
	puts "#{num} ants go marching."
end
```

Whoa. Wait a second there. That started with 0, not 1? And what's with the `#{num}` bit?

Let's handle the second of those questions first.

[^irb-def]: Short for [Interactive Ruby Shell](https://en.wikipedia.org/wiki/Interactive_Ruby_Shell).

## String.new and you

First off, let's talk about strings in Ruby. Here are just a few ways to create a string:

```
string = "This is a string."
string = 'This, too, is a string.'
string = %Q(This is a string as well. And functionally equivalent to the first.)
string = %q(Also a string, and functionally equivalent to the second.)
string = String.new("Hey there, this seems like a long way around to write a string")
string = String.send(:new, "Dirty little secret: This is what's happening under the hood of all the above")
```

There are still more ways than the above to create a string - which is a fancy way of saying "a group of alphanumeric characters."

To talk about the difference between those string creation schemes, let's talk first about what you generally want to do with strings.

### Concatenating strings

Concatenating is a fancy way of saying "smash some strings together" and almost any string method can do it.

Here's a few examples:

```
string = 'This ' + 'is ' + 'a string in pieces.'
string << " And now I'm adding a second sentence."
string = string + %Q( And now a third.)
```

Let's say we have another variable, and we'd like to insert that in the middle of a string. When we have concatenation, we can do something like this:

```
a_name = "Billy"
greeting = "Hi there " + a_name + ". Nice to meet you."
```

And that will work with all those ways of making a string.

But it's _unweildy_, isn't it?

### String interpolation

What if we could just jam our variable in there, wouldn't that be nifty?

That's what that `#{num}` bit was earlier. Things in strings (well, certain strings, more on that in a minute) surrounded by `#{}` will be interpreted as Ruby code and run right in the middle of a string.

So, the above could look more like this:

```
a_name = "Billy"
greeting = "Hi there #{a_name}. Nice to meet you."
```

Or, you could do things like this:

```
message = "There are #{11*2} players on a football field at a time."
```

Now, I mentioned just a bit ago that this method doesn't work with all strings.

Try the below in your handy-dandy `irb` session:

```
quarterback = "Andrew Luck"
string = "#{quarterback} is the Colts' starting QB."
string = '#{quarterback} is the Colts\' starting QB.'
string = %Q(#{quarterback} is the Colts' starting QB.)
string = %q(#{quarterback} is the Colts' starting QB.)
string = String.new("#{quarterback} is the Colts' starting QB.")
string = String.new('#{quarterback} is the Colts\' starting QB.')
string = String.send(:new, "#{quarterback} is the Colts' starting QB.")
```

_Bonus learning: Notice the "\" in the second and next-to-last example? Do you know why they're there?_

So, what did you see? Some strings interpolate Ruby code in `#{}` and some don't. Specifically: strings created using `""` or `%Q()` _will_ interpolate those blocks while strings declared using `''` or `%q()` _will not_.

As a second point: Why use the funky `%Q()` or `%q()` variations at all? Well, if you have a string with punctuation - like our "\" examples above - those approaches let you get by without escaping the punctuation.

As for the last two - `String.new` and `String.send(:new)` - that's what we like to call foreshadowing.

## A quick bit about Arrays

We'll cover Arrays and Hashes and the like later this week, but I didn't want to leave you hanging on the whole "why did that start with 0" thing up top.

`10.times` is an Enumerator[^spot-check] which makes it kind of an Array. In Ruby (and almost all programming languages), the first element of arrays and other enumerators start their numbering with "0". It can be a bit counter-intuitive, but it's also _consistent_. So, just remember to count from 0 instead of one when you want to pluck a specific item from a list.

[^spot-check]: What to see for yourself? `10.times.class`

## Getting user input

For this first day's homework, you're going to need to accept input from users via the command line.

Your starter project should have a method in there to do it for you, but let's take a moment to see what's going on under the hood of that little bit of code.

`lipsum_wanted = ARGV[0]`

`ARGV` is an environment variable (and a constant![^constants]) that represents the arguments passed into the Ruby script you're writing.

[^constants]: You can tell `ARGV` is a constant by its all-caps nature. Constants in Ruby are things that are supposed to remain static and unchanged. It will let you change it, but it will squawk at you when you do so. [More on ARGV](http://jnoconor.github.io/blog/2013/10/13/a-short-explanation-of-argv/). [More on constants](http://rubylearning.com/satishtalim/ruby_constants.html).

So, when you run your program from the command line like so:

`ruby lipsum_generator.rb standard`

`ARGV` will be an array like this:

`["standard"]`

And `ARGV[0]` is the first element of that array (see the bit about Arrays earlier), or a string of `"standard"`.

Nifty, eh?

## Sending data back to the user

For the homework assignment, you're also going to want to spit _something_ (no spoilers) back to the user. There are two primary methods to do that in Ruby:

`puts`: Nine times out of ten, `puts` is what you're looking for. It prints out whatever argument you passed it[^exception] with a newline (like you hit `enter` after it) appended.

[^exception]: Well, what it actually does it prints the result of calling `.to_s` on the argument passed to it. So, _sometimes_ it can throw an error if the argument passed to it can't be converted into a string.

`print`: Despite being a more obvious name, `print` is less used in Ruby. Two reasons: First, it doesn't include the newline at the end. Second, it's an _entire character longer_. We're programmers. We're lazy by nature. `puts` saves us a keystroke.

## Control flow

For the homework assignment, you're going to be doing different things based on what the arguments to your program were.

You're probably going to want to do something like this (pseudo-code):

```
If lipsum_wanted is "standard" then do something.
Else if lipsum_wanted is "samuel" then do this other thing.
Else if lipsum_wanted is "hipster" then do this thing instead.
If none of the above, then do this default thing.
```

At its core, this is most of programming (functionally speaking) - if this thing is this thing, do this particular thing.

So, let's dig into doing this Ruby-style:

```
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

Breaking that down a bit:

`==` is a comparison operator in Ruby. It's essentially the same as saying "does the left side _equal_ the right side"[^meta-note]. Note the _two_ ='s. A single `=` would instead _assign_ the variable (and, hence, would always return true).

[^meta-note]: Hey, it's Ruby and there actually several _slightly different_ ways to test equality. You can read more about them [over at StackOverflow](http://stackoverflow.com/questions/7156955/whats-the-difference-between-equal-eql-and).

Secondly, notice the `elsif` there. I know it looks like a typo. It's not. It just looks less like a typo than `elseif`, so Ruby ditched the second "e". Funky, but true. Oh, and its also a character shorter. Score!

When Ruby hits this block of code, it will go line by line and see if the condition is _true_. As soon as it is, it will execute the code contained therein. Otherwise, it continues on its merry way.

If _nothing_ matches, it will execute the else.

_Bonus learning: What do you think would happen if we left the `else` bit off of there and set our_character to "the fish"?_

There is one other way to do this sort of thing - especially when you have a single variable or condition that's the same for all clauses - `case`.

```
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

This is functionally equivalent to the previous example. We tell Ruby that we're looking at `our_character`, and then it does a comparison for each `when` statement and if it matches, executes.

If nothing matches, we fall back to `else`.

Using `case` is slightly more confusing than the if/elsif/else cycle, but if you're writing a ton of those[^later], a case/when block can make more sense.

[^later]: Later in class, we'll talk about why you generally shouldn't be writing a ton of these clauses in a single chain. But, like I said, that's later.

`case` also has one other nicety - it's a thing all itself. Lookee:

```
puts case our_character
when "thing one"
	"Flying a kite"
when "thing two"
	"All kinds of bad tricks"
when "the cat in the hat"
	"Knows a lot about that"
else
	"All quiet on the Western front"
end
```

`case`, like everything else in Ruby, is itself an object, and in this case, we're sending it as an argument to `puts`.

Nifty.

This brief object interlude is also something called foreshadowing. We'll talk much more about objects on Wednesday and Thursday.

Like to noodle some more on `case`? [Here's just the thing.](http://www.skorks.com/2009/08/how-a-ruby-case-statement-works-and-what-you-can-do-with-it/)

# Homework submission

For tonight's homework (and until further notice), homework will be assigned via a GitHub issue and completed/turned in via a link to a GitHub _gist_.

You can find GitHub's gists over at <https://gist.github.com>. It should be fairly self-explanatory (and we covered this in class), but let me know if it gives you any gruff.
