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
myString = TfpMetaprogramming::ObjectModel::String.new(hello)"
myString = TfpMetaprogramming::ObjectModel::String.new("hello")
puts "Now calling myString.primate
which should output 'I am a the included primate (IPrimate) module and I override String#reverse'"
puts "..."
puts myString.primate
puts
puts "Using ruby 2's prepend functionality,
this class also has a method #prep_primate, which prepends
the module TfpMetaprogramming::ObjectModel::Primate (as opposed to the former IPrimate).
THis module which also includes the reverse method.
due to this prepending, of the Primate module BELOW the class itself in the ancestor chain
when reverse is called, IPrimate#reverse is overwritten by Primate#reverse, and is never called"
puts "Now calling myString.reverse (before calling prep_primate),
which should output 
'overwrites String#reverse: fruit====tiurf'
..."
puts myString.reverse
puts "Now calling myString.prep_primate"
myString.prep_primate
# myString.reverse
puts "as you can see, in the ancestors chain for the namespaced String class
the Primate module comes before the IPrimate is as follows"
puts "now calling myString.class.ancestors"
puts "..."
puts myString.class.ancestors
puts "Now calling myString.reverse (before calling prep_primate),
which should output 
'I am the prepended Primate module and I output banana====ananab'
..."
