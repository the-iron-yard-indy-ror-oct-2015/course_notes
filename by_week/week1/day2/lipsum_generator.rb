#!/usr/bin/env ruby

lipsum_wanted = ARGV[0]
number_wanted = ARGV[1] || 1

if number_wanted
  number_wanted = number_wanted.to_i
end

if lipsum_wanted == "standard"
  something = number_wanted.times.collect do
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur elementum elit lorem, et elementum sapien sodales non. Sed sed est at enim ullamcorper convallis ut egestas eros. Duis sit amet porta orci, id pharetra magna. Praesent orci libero, ultricies at sapien vel, pellentesque efficitur purus. Pellentesque convallis lacus sem. Phasellus et mauris tristique, suscipit augue a, euismod sapien. Morbi a semper lacus. Mauris placerat at lectus ac laoreet. Sed arcu risus, vestibulum a bibendum a, elementum id leo. Fusce fringilla lacinia nunc, ac tempor nulla commodo ut.\n"
  end
elsif lipsum_wanted == "hipster"
  something = "hipster be hipstering\n" * number_wanted
elsif lipsum_wanted == "whatever"
  something = "this is my united states of whatever\n" * number_wanted
else
  puts "Hi. The available options are 'standard', 'hipster' or 'whatever'."
end

if something
  puts something

  system(%Q(echo "#{something}" | pbcopy))
end
