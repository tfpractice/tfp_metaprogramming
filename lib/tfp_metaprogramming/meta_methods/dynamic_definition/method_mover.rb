require_relative 'flower'
module TfpMetaprogramming
  module MetaMethods
    module DynamicDefinition
      # removes Flower#freeze via Module#undef_method
      class MethodMover# < BasicObject
        attr_reader :flower

        def initialize(flower = TfpMetaprogramming::MetaMethods::DynamicDefinition::Flower.new )
          @flower = flower
        end

        def remove_freeze
          if flower.respond_to?(:freeze, true)
            @flower.class.send(:undef_method, :freeze)
            "removed Floewr#freeze"
          end
          "already removed"
        end

        def freezeable?
          flower.respond_to?(:freeze, true)
        end
      end
    end
  end
end
