#!/usr/bin/env ruby
require 'tfp_metaprogramming'
require 'pp'

puts 'TfpMetaprogramming::ObjectModel::StringRefinement
is a Module that adds #refined_method to Object:String.
It does using "refinements", which is safer/less chaotic
than monkey patching.
TfpMetaprogramming::ObjectModel::RString inherits from
Object::String. and includes the StringRefinement module

Now creating a new RString

rString = TfpMetaprogramming::ObjectModel::RString.new("Im an rString")'
rString = TfpMetaprogramming::ObjectModel::RString.new("Im an rString")

puts 'Now creating a new String, str = "regular string"'
str = "regular string"
puts 'You will see that the string object str
does not respond to refined_method

Now calling str.respond_to?(:refined_method)'
puts  str.respond_to?(:refined_method)

puts 'but rString.respond_to(:refined_method) also returns false'
puts  rString.respond_to?(:refined_method)
puts 'but rString.refined_method does not throw an error.
Now Calling rString.refined_method '
puts rString.call_refinement

# Since refinements are an experimental subject,
# demonstrating their inclusion is a bit *unrefined* but'

# sFile =File.open("../lib/tfp_metaprogramming/object_model/refinement/string_refinement", "r") #{ |file|  }
# puts sFile.read
# pp TfpMetaprogramming::ObjectModel::StringRefinement.lol
# puts '
