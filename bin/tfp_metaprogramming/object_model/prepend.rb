#!/usr/bin/env ruby
require "tfp_metaprogramming"


puts "TfpMetaprogramming::ObjectModel::String\ninherits from the Core Ruby String Class."
puts "this class includes the module TfpMetaprogramming::ObjectModel::IPrimate, to gain two new methods #primate and #reverse.\n" 
puts "this new method #primate returns information about the Module,\nand the #reverse method overrides Ruby's String#reverse"
puts 
puts "Now creating a new namespaced string\nmyString = TfpMetaprogramming::ObjectModel::String.new(hello)"
myString = TfpMetaprogramming::ObjectModel::String.new("hello")
puts "Now calling myString.primate"
puts "..."
puts myString.primate
puts
puts "Using ruby 2's prepend functionality,\nthis class also prepends the module TfpMetaprogramming::ObjectModel::Primate (as opposed to the former IPrimate)\n,which also includes the reverse method"
puts "due to this prepending, of the Primate module BELOW the class itself, IPrimate#reverse is overwritten by Primate#reverse, and is never called"
puts "Now calling myString.reverse"
puts myString.reverse
puts "as you can see, in the ancestors chain for the namespaced string class\nthe Primate module comes before the IPrimate is as follows"
puts "now calling myString.class.ancestors"
puts "..."
puts myString.class.ancestors


# puts myString.primate
# puts myString.reverse