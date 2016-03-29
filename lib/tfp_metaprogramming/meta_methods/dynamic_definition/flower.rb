module TfpMetaprogramming
  module MetaMethods
    module DynamicDefinition
      class Flower
        attr_reader :kingdom, :summary, :name
        def initialize(name = "orchid", summary = "floral", kingdom = "plantae")
          @name = name
          @summary = summary
          @kingdom = kingdom
        end

        def describe_kingdom
          "the describe_kingdom method shows
          the result of the Flower#kingdom method
          which is #{kingdom}"
        end
        def describe_name
          "the describe_name method shows
          the result of the Flower#name method
          which is #{name}"
        end
        def describe_summary
          "the describe_summary method shows
          the result of the Flower#summary method
          which is #{summary}"
        end

        def method_missing(mName)
          if mName.to_sym == :freeze
            "this flower no longer responds to freeze"
          else
            super
          end

        end
        def self.method_removed(mName)
          "freeze method has been removed" if mName.to_sym == :freeze
        end
        def self.remove_freeze
          remove_method(:freeze)
        end
        def rt_freeze?
          self.respond_to?(:freeze)

        end
      end
    end
  end
end
