# This Module will be included in TfpMetaprogramming::ObjectModel::String
# to overwrite TfpMetaprogramming::ObjectModel::Primate
module TfpMetaprogramming::ObjectModel::Primate
  # overwrites Object::String#reverse when included
  #
  # @return [String] "I am the prepended Primate module and I output banana====ananab"
  def reverse
    'I am the prepended Primate module and I output banana====ananab'
  end

  # Shows the Modules nesting, due to the compact
  # module definition, this returns a single object in the array
  #
  # @return [Array] TfpMetaprogramming::ObjectModel::Primate
  def self.show_nest
    Module.nesting
  end
end
