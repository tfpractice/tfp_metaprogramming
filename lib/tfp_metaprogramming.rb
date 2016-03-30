require 'bundler/setup'
require 'tfp_metaprogramming/version'
require 'tfp_metaprogramming/object_model'
require 'tfp_metaprogramming/meta_methods'
require 'tfp_metaprogramming/callable'

module TfpMetaprogramming
  def self.check
    "I'm working"
  end

  def self.show_nest
    Module.nesting
  end

  module ObjectModel;end
  module MetaMethods; end


end

# puts '---_________----'
# puts "showing MM AGAIN contants"
# puts TfpMetaprogramming::MetaMethods.constants
# puts '---_________----'

# puts '---_________----'
# puts "showing DynaDef contants"
# puts TfpMetaprogramming::MetaMethods::DynamicDefinition.constants
# puts '---_________----'
# puts TfpMetaprogramming.constants
