module TfpMetaprogramming
  module MetaMethods
    module DynamicDefinition
      # an excessively convoluted class
      # whose purpose is to have it's methods
      # called from other objects
      class Flower
        attr_reader :kingdom, :summary, :name
        def initialize(name = 'orchid', summary = 'floral', kingdom = 'plantae')
          @name = name
          @summary = summary
          @kingdom = kingdom
        end

        # describes the kingdom attribute
        # @return [String]
        def describe_kingdom
          "the describe_kingdom method shows
          the result of the Flower#kingdom method
          which is #{kingdom}"
        end

        # describes the name attribute
        # @return [String]
        def describe_name
          "the describe_name method shows
          the result of the Flower#name method
          which is #{name}"
        end

        # describes the kingdom summary
        # @return [String]
        def describe_summary
          "the describe_summary method shows
          the result of the Flower#summary method
          which is #{summary}"
        end

        # a method to handle Object#freeze
        # after it has been removed via
        # Object#remove_method
        # @return [String]
        def method_missing(m_name)
          if m_name.to_sym == :freeze
            'this flower no longer responds to freeze'
          else
            super
          end
        end

        # a method that acts as a callback
        # once a method has been removed
        # @return [String]
        def self.method_removed(m_name)
          'freeze method has been removed' if m_name.to_sym == :freeze
        end

        # removes Object#freeze from this object
        def self.remove_freeze
          remove_method(:freeze)
        end

        # checks if object responds to freeze
        # @return [Boolean]
        def rt_freeze?
          self.respond_to?(:freeze)
        end
      end
    end
  end
end
