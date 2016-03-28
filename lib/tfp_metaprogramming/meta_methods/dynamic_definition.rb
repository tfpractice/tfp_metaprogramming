module TfpMetaprogramming
  module MetaMethods
    module DynamicDefinition
      def self.show_nest
        Module.nesting
      end
    end
  end
end

require_relative './dynamic_definition/smelly_accessor'
require_relative './dynamic_definition/fragrant_accessor'
