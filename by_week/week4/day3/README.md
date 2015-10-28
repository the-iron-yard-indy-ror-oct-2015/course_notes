# ModelViewController

![](http://cdn.gifbay.com/2013/11/break_it_down-98451.gif)

# Let's break it down

# Model

* Ruby classes
* That map to database tables
* An attr_accessor for each database column
* An extra step to "persist" or save the objects to the database

# View

* Templates.
* How your data is _displayed_.
* ERB, Haml, Slim, JSON, XML

# Controller

* The bridge between M & V
* Speaks HTTP
* Authorization, Authentication, and other stuff

# Today: Controllers Deep Dive

# Let's make one

`rails generate controller visitor`

```
      create  app/controllers/visitor_controller.rb
      invoke  erb
      create    app/views/visitor
      invoke  test_unit
      create    test/controllers/visitor_controller_test.rb
      invoke  helper
      create    app/helpers/visitor_helper.rb
      invoke    test_unit
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/visitor.coffee
      invoke    scss
      create      app/assets/stylesheets/visitor.scss

 ```

 ---

 app/controllers/visitor_controller.rb

 ```ruby
      class VisitorController < ApplicationController
	  end
```

---

# Current Status

* Our new controller has no actions
* Our controller has no routes mapped to it, so no URL will reach it

---

# Controller actions

```ruby
class VisitorController < ApplicationController

  def index
    @posts = [
      {:title => "Awesome post First", :summary => "This is my summary"},
      {:title => "Awesome post Second", :summary => "Another awesome summary"}
    ]
  end

end
```

---

# Our new action

* Will, by default, render a view located at `app/views/visitor/index.html.erb`
* `@posts` will be available in that view
* Still needs a route ...

---

`config/routes.rb`

```ruby
Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
```

---

# Whoa, that's a lot of comments

---

```ruby

Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  root 'visitor#index'

end
```

---

# [fit] Now, `localhost:3000/` will hit our new controller action
## WOOT!

---

# Other route methods

```ruby
  # Example of regular route:
  get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
```

---

# The `params` hash

* Notice the `:id` in the previous slide?
* That (and any other ones) will be available in your controller as params[:id]

---

# [fit] A quick note about resources and CRUD

Rails is well-tuned for CRUD apps.

* **CRUD:** Create, Read, Update Delete

When we talk about `resources`, they're things that we expect to need to do at least a subset of the above.

---

# Resource routes

```ruby
  # Example resource route (maps HTTP verbs to controller actions automatically):
  resources :products

  # Example resource route with options:
  resources :products do
  	member do
 	 	get 'short'
  		post 'toggle'
 	end

  	collection do
  		get 'sold'
  	end
  end
```

---

# Resource routes

```ruby
  # Example resource route with sub-resources:
  resources :products do
  	resources :comments, :sales
  	resource :seller
  end

  # Example resource route with more complex sub-resources:
  resources :products do
  	resources :comments
  	resources :sales do
  		get 'recent', on: :collection
  	end
  end
```

---

# Resource Routes

```ruby
  # Example resource route with concerns:
  concern :toggleable do
  	post 'toggle'
  end
  resources :posts, concerns: :toggleable
  resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  namespace :admin do
  	# Directs /admin/products/* to Admin::ProductsController
  	# (app/controllers/admin/products_controller.rb)
  	resources :products
  end
```

---

# Rendering JSON/XML/Whatever

* Controllers don't have to just render HTML
* They can render plain ol' text
* They can render JSON
* They can render XML
* They can render _nothing_

---

# Rendering text from a controller

```ruby
def text_render
	render plain: "OK"
end
```

---

# But let's talk about that tomorrow ...

---

# The Asset Pipeline & You

## What we mean by "assets"

* CSS
* Javascript
* Images
* PDFs, etc.
* Generally, non-dynamic elements

## The old days

* Back in the day, we managed our own assets, generally in the `public` folder.
* You can still do this today, but due to the rise in frontend complexity and the handiness of preprocessors, Rails added the asset pipeline in version 3.1 (August 2011)
* This makes CSS and JavaScript first-class citizens
* Whatever that means ...

```
$ rails g controller welcome
      create  app/controllers/welcome_controller.rb
      invoke  erb
      create    app/views/welcome
      invoke  test_unit
      create    test/controllers/welcome_controller_test.rb
      invoke  helper
      create    app/helpers/welcome_helper.rb
      invoke    test_unit
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/welcome.coffee
      invoke    scss
      create      app/assets/stylesheets/welcome.scss
```

# Javascript

```
app
	|_ assets
		|_ images
		|_ javascripts
			|_ application.js
			|_ welcome.coffee
		|_ stylesheets
```

# Wait. `.coffee`? WTF?

* [CoffeeScript](http://coffeescript.org/): We're Rubyists. We like Ruby. JavaScript ain't Ruby, so let's make something that looks like Ruby, but compiles to Javascript.
* Throw in a bit of Python while we're at it

```coffeescript
# Assignment:
number   = 42
opposite = true

# Conditions:
number = -42 if opposite

# Functions:
square = (x) -> x * x

# Arrays:
list = [1, 2, 3, 4, 5]

# Objects:
math =
  root:   Math.sqrt
  square: square
  cube:   (x) -> x * square x

# Splats:
race = (winner, runners...) ->
  print winner, runners

# Existence:
alert "I knew it!" if elvis?

# Array comprehensions:
cubes = (math.cube num for num in list)
```

```javascript
var cubes, list, math, num, number, opposite, race, square,
  slice = [].slice;

number = 42;

opposite = true;

if (opposite) {
  number = -42;
}

square = function(x) {
  return x * x;
};

list = [1, 2, 3, 4, 5];

math = {
  root: Math.sqrt,
  square: square,
  cube: function(x) {
    return x * square(x);
  }
};

race = function() {
  var runners, winner;
  winner = arguments[0], runners = 2 <= arguments.length ? slice.call(arguments, 1) : [];
  return print(winner, runners);
};

if (typeof elvis !== "undefined" && elvis !== null) {
  alert("I knew it!");
}

cubes = (function() {
  var i, len, results;
  results = [];
  for (i = 0, len = list.length; i < len; i++) {
    num = list[i];
    results.push(math.cube(num));
  }
  return results;
})();
```

# CSS

```
app
	|_ assets
		|_ images
		|_ javascripts
		|_ stylesheets
			|_ application.css
			|_ welcome.scss
```

# Wait. `.scss`? WTF?

* [Sass](http://sass-lang.com/): We're programmers. We like variables and mixins and methods and stuff. Let's make something that lets us use those ... but compiles to regular old CSS.

```scss
$font-stack:    Helvetica, sans-serif;
$primary-color: #333;

body {
  font: 100% $font-stack;
  color: $primary-color;
}
```

```css
body {
  font: 100% Helvetica, sans-serif;
  color: #333;
}
```

`app/assets/javascripts/application.js`

```javascript
// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
```

---

`app/assets/javascripts/welcome.coffee`

```coffeescript
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
```

---

`app/assets/stylesheets/application.css`

```css
/*
 * This is a manifest file that'll be compiled into application.css, which will include all the files
 * listed below.
 *
 * Any CSS and SCSS file within this directory, lib/assets/stylesheets, vendor/assets/stylesheets,
 * or any plugin's vendor/assets/stylesheets directory can be referenced here using a relative path.
 *
 * You're free to add application-wide styles to this file and they'll appear at the bottom of the
 * compiled file so the styles you add here take precedence over styles defined in any styles
 * defined in the other CSS/SCSS files in this directory. It is generally better to create a new
 * file per style scope.
 *
 *= require_tree .
 *= require_self
 */
```

---

`app/assets/stylesheets/welcome.scss`

```scss
// Place all the styles related to the welcome controller here.
// They will automatically be included in application.css.
// You can use Sass (SCSS) here: http://sass-lang.com/
```

---

# Images

Just dump 'em in there

```
app
	|_ images
		|_ whatever.jpg
		|_ whichever.gif
```

---

# Why do all this?

---

* **Encapsulation:** As your site gets sprawling across multiple controllers, you can separate the styles and javascripts that pertain to just that specific controller
* **Production-fying:** The asset pipeline will concantenate, minify and process all these files so they load fast in production.
* **Versioning:** Bust caches when a file changes
* **Goodies:** You also get some handy helpers in your views ...

---

```erb
<!DOCTYPE html>
<html>
<head>
  <title>Second Example of June 2015 Indy RoR</title>
  <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track' => true %>
  <%= javascript_include_tag 'application', 'data-turbolinks-track' => true %>
  <%= csrf_meta_tags %>
</head>
<body>

<%= yield %>

</body>
</html>
```

---

# Aside on turbolinks

* Makes pages load faster by not loading the _entire_ page
* Instead, it keeps the wrapper (essentially, the layout) and just swaps out the bits that changed
* It does this automatically
* It has been known to cause major headaches for some javascript libraries in particular

---

```erb
	<%= image_tag "whatever.jpg" %>
	<!-- Development -->
	<img src="/assets/whatever.jpg" />
	<!-- Production -->
	<img src="/assets/whatever-af27b6a414e6da00003503148be9b409.jpg" />
```

---

# You also get helpers in your (S)CSS

```scss
.button.checkable { background-image: url(image_path('tick.png')); }
/* .button.checkable { background-image: url(/assets/tick.png); }
```

---

# A few things to keep in mind

* These examples are kinda simple
* But, if you stick with using the pipeline, you don't need to worry about the URL for these assets changing when you deploy to production.

---

# Two non-asset view helpers

```erb
<%= link_to "Say Hi", namer_path(:name => "Billy") %>
<a href="/say_hi/Billy">Say Hi</a>
<%= link_to "Say Hi", namer_url(:name => "Billy") %>
<a href="http://localhost:3000/say_hi/Billy">Say Hi</a>
```
