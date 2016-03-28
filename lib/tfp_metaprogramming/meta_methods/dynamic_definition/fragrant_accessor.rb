require_relative 'flower'
module TfpMetaprogramming
  module MetaMethods
    module DynamicDefinition
      class FragrantAccessor
        attr_reader :flower

        def initialize(flower = TfpMetaprogramming::MetaMethods::DynamicDefinition::Flower.new )
          @flower = flower
        end

        def self.retrieve_description(name)
          define_method(name) do
            flower.send("describe_#{name}")
          end
        end
        def self.applyMethods
          retrieve_description :name
          retrieve_description :summary
          retrieve_description :kingdom
        end



      end
    end
  end
end
