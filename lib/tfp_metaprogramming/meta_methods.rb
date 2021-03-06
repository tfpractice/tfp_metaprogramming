# This module is dedicated to the various ways methods can be called/defined
module TfpMetaprogramming
  module MetaMethods
    def self.description
      'this section is dedicated to the various ways methods can be called/defined'
    end
    module CapsuleBreaker;end
    module DynamicDefinition;end

  end
end

require_relative './meta_methods/capsule_breaker'
require_relative './meta_methods/dynamic_definition'
require_relative './meta_methods/aliases'
