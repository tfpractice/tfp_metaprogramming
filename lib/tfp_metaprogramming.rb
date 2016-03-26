require "bundler/setup"
require "tfp_metaprogramming/version"
require "tfp_metaprogramming/object_model"

module TfpMetaprogramming
  def self.check
    "I'm working"
  end
  def self.show_nest
    Module.nesting
  end
  


end
# puts $:
# puts TfpMetaprogramming.check
