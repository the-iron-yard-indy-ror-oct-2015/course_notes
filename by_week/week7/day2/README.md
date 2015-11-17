# Welcome to JavaScript

---

# A bit of clarification and history

* JavaScript is not _Java_ (but Netscape licensed the name back in the day).
* _Technically_ it's ECMAScript.
* It's a programming language that started in the Netscape Navigator browser in 1995
* It took just 10 days to write the first version
* Want more? [A short history of JavaScript](https://www.w3.org/community/webed/wiki/A_Short_History_of_JavaScript)

---

# Sample code

---

## Ruby

```ruby
a = 3
b = 7
c = a + b
our_string = "This string is amazing!"
our_string = our_string + " And this one, too!"
```

---

## JavaScript

```javascript
var a = 3;
var b = 7;
var c = a + b;
var our_string = "This string is amazing!";
our_string = our_string + " And this one, too!";
```

---

# Control Flow

### Ruby

```ruby

num = 3

if num ==1
	puts "It's One"
elsif num == 2
	puts "It's Two"
elsif num == 3
	puts "IT'S THREE!!!"
else
	puts "none of the above"
end
```

---

# Control Flow

```javascript
var num = 3;

if(num === 1){
	alert("It's One");
} else if(num === 2){
	alert("It's Two");
} else if(num === 3){
	alert("IT'S THREE!!!");
} else {
	alert("none of the above");
}
```

---

# Ruby Enumerable

```ruby
our_array = [1,2,3,4,5,6]

our_array.each do |num|
	puts num
end

our_array.inject(0){ |sum, x| sum + x }

our_array.select{ |num| num == 2}
```

---

# Now, in JavaScript

```javascript

var our_array = [1,2,3,4,5,6];

our_array.map( function(num){
	alert(num);
});

our_array.reduce( function(sum, x){
	return sum + x
}, 0);

our_array.filter( function(num){
	return num === 2;
});

```

---

# JSON

### Ruby
```ruby

{:this_is_a_ruby_hash => "This is the value"}
-or-
{this_is_a_ruby_hash: "This is the value"}
```

### JavaScript
```javascript

{"this is json" : "it looks kinda similar, no?"}

```
---

# Accessing Hash/JSON values

### Ruby

```ruby
our_hash = {:this_is_a_ruby_hash => "This is the value"}
our_hash[:this_is_a_ruby_hash]
```

### Javascript

```javascript

var our_json = {"this_is_json" : "it looks kinda similar, no?"};
our_json.this_is_json;
```

---

# Functions

### Ruby

```ruby
def our_function(arg1, arg2)
	arg1 + arg2
end
```

### JavaScript

```javascript

function our_function(arg1, arg2){
	return arg1 + arg2;
}
```

---

# Classes

### Ruby

```ruby
class Person
	attr_accessor :username, :token

	def initialize(username, token)
		self.username = username
		self.token = token
	end
end

chris = Person.new("chris", "09053bbd5cd5b90fdfd05055ce45635ea9f676b")

```

---

# Classes

### JavaScript

```javascript
function Person(username, token){
    this.username = username;
    this.token = token;
}

var chris = new Person("chris", "09053bbd5cd5b90fdfd05055ce45635ea9f676b")
```
