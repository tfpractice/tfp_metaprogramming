# require_relative "../../meta_mod"
require_relative 'i_primate'
require_relative 'primate'

# Namespaced String Class to be augmenting with Module
# inherits from Ruby Sting
class TfpMetaprogramming::ObjectModel::String < String
  include TfpMetaprogramming::ObjectModel::IPrimate

  def prep_primate
    self.class.prepend TfpMetaprogramming::ObjectModel::Primate
  end
end
