module TfpMetaprogramming
  module MetaMethods
    # a namespace exploring various
    # techniques foir defining methods
    module DynamicDefinition
      # shows the nesting of the current module
      # @return [Array]
      def self.show_nest
        Module.nesting
      end
      class Flower; end
      class SmellyAccesssor; end
      class FragrantAccessor; end
      class DynamicProxy; end
    end
  end
end

require_relative './dynamic_definition/smelly_accessor'
require_relative './dynamic_definition/fragrant_accessor'
require_relative './dynamic_definition/dynamic_proxy'
require_relative './dynamic_definition/method_mover'
