require_relative "./prepend/string"

puts "Using ruby 2's prepend functionality, this module includes the primate module below the including class in the ancestor chain"
myString = TfpMetaprogramming::ObjectModel::String.new("hello")
# puts myString.class.ancestors
puts myString.primate
puts myString.reverse