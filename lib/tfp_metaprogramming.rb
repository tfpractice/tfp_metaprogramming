require 'bundler/setup'
require 'tfp_metaprogramming/version'

module TfpMetaprogramming
  def self.check
    "I'm working"
  end

  def self.show_nest
    Module.nesting
  end
end

require 'tfp_metaprogramming/object_model'
require 'tfp_metaprogramming/meta_methods'
