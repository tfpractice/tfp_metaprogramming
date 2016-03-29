module TfpMetaprogramming
  module MetaMethods
    module DynamicDefinition
      def self.show_nest
        Module.nesting
      end
      class Flower;end
      class SmellyAccesssor;end
      class FragrantAccessor;end
      class DynamicProxy;end
      # puts "showing DynaDef contants"
      # puts constants

    end
  end
end

require_relative './dynamic_definition/smelly_accessor'
require_relative './dynamic_definition/fragrant_accessor'
require_relative './dynamic_definition/dynamic_proxy'
require_relative './dynamic_definition/method_mover'
