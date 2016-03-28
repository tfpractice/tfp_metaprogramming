require_relative 'flower'
module TfpMetaprogramming
  module MetaMethods
    module DynamicDefinition
      class SmellyAccessor
        attr_reader :flower
        def initialize(flower = TfpMetaprogramming::MetaMethods::DynamicDefinition::Flower.new )
          @flower = flower
        end
        def get_flower_summary
          flower.describe_summary
        end
        def get_flower_kingdom
          flower.describe_kingdom
        end
        def get_flower_name
          flower.describe_name
        end
      end
    end
  end
end
