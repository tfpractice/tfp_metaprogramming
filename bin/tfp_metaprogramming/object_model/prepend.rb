#!/usr/bin/env ruby
require 'tfp_metaprogramming'

puts "TfpMetaprogramming::ObjectModel::String inherits from the Core
Ruby String Class. This class includes the module
TfpMetaprogramming::ObjectModel::IPrimate, to gain two new methods
#primate and #reverse.
This new method #primate returns information about the Module,
and the #reverse method overrides Ruby's String#reverse"
puts
puts "Now creating a new namespaced string
my_string = TfpMetaprogramming::ObjectModel::String.new(hello)"
my_string = TfpMetaprogramming::ObjectModel::String.new("hello")
puts "Now showing the ancestor chain of my_string
via my_string.class.ancestors"
puts my_string.class.ancestors
puts "Now calling my_string.primate
which should output
'I am a the included primate (IPrimate) module and I override String#reverse'
..."
puts my_string.primate
puts
puts "Using ruby 2's prepend functionality,
this class also has a method #prep_primate, which prepends
the module TfpMetaprogramming::ObjectModel::Primate
(as opposed to the former IPrimate).
This module which also includes the reverse method.
due to this prepending, of the Primate module BELOW the class itself
in the ancestor chain. when reverse is called, IPrimate#reverse
is overwritten by Primate#reverse, and is never called

Now calling my_string.reverse (before calling prep_primate),
which should output 
'overwrites String#reverse: fruit====tiurf'
..."
puts my_string.reverse
puts "Now calling my_string.prep_primate"
my_string.prep_primate
# my_string.reverse
puts "as you can see, in the ancestors chain for the namespaced String class
the Primate module comes before the IPrimate is as follows"
puts "now calling my_string.class.ancestors"
puts "..."
puts my_string.class.ancestors
puts "Now calling my_string.reverse (before calling prep_primate),
which should output 
'I am the prepended Primate module and I output banana====ananab'
..."
