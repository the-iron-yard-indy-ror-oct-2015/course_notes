require 'sinatra'

get "/" do
  "Hello there"
end


get "/hi" do
  "<h1>Hello world</h1>"
end

get "/bye" do
  "<h1>Goodbye, cruel world ...</h1>"
end

get "/current_time" do
  "<h1>The current time is #{Time.now}.</h1>"
end

get "/hello/:first_name/:last_name" do
  # params.inspect
  erb :hello
end

get "/matt/:headline" do
  @posts = [
    {:class => 'product4', :text => "COOKOUT-BOYFIGHTS"},
    {:class => 'product1', :text => "HOLMES"},
    {:class => 'product2', :text => "BOYFIGHTS"},
    {:class => 'product3', :text => "BACKYARD-BOYFIGHTS"},
  ]
  @headline = params['headline']
  erb :matt
end

get "/chuck?/:headline?" do
  @posts = [
    {:class => 'product4', :text => "rgheorhgielh"},
    {:class => 'product1', :text => "ergerge"},
    {:class => 'product2', :text => "rgergeg"},
    {:class => 'product3', :text => "rgergerge"},
  ]
  @headline = params['headline'] || "Default headline"
  erb :matt
end
