#!/usr/bin/env ruby
# require_relative "string"

require "tfp_metaprogramming"

puts "Leveraging Ruby's Open Class structure, this script adds a #monkey method to the String Class. The method returns a statement about monkeys"
puts "Creating a new string [str]"
puts "..."
str = "I am a new string"
puts "Now calling str.monkey"
puts "..."
puts str.monkey
puts "It also dynamically assigns a new instance variable @ape to the string object"
puts "showing str.instance_variables"
puts "..."
puts "str.instance_variables : #{str.instance_variables}"
puts "Now calling str.make_ape('curious george)'"
puts "..."
str.make_ape('curious george')
puts "Again showing str.instance_variables"
puts "..."
puts "str.instance_variables : #{str.instance_variables}"

