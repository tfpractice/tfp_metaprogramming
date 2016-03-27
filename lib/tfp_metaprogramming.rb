require "bundler/setup"
require "tfp_metaprogramming/version"

module TfpMetaprogramming
  def self.check
    "I'm working"
  end
  def self.show_nest
    Module.nesting
  end
  


end
# puts TfpMetaprogramming.check

require "tfp_metaprogramming/object_model"

# puts $:
