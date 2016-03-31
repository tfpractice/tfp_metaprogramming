require_relative 'flower'

module TfpMetaprogramming
  module MetaMethods
    module DynamicDefinition
      # uses method_missing?  to implement
      # call flower description methods
      # as ghost methods
      class DynamicProxy
        #sets a #flower method to access @flower
        attr_reader :flower

        def initialize(flower = TfpMetaprogramming::MetaMethods::DynamicDefinition::Flower.new() )
          @flower = flower
        end

        # delegates missing methods to @flower
        # if @flower respnds to that call
        # otherwise calls method_missing up
        # the ancestor chain (cref)
        #
        # @param [String,Symbol] mName name of method
        def method_missing(mName)
          super if !@flower.respond_to?(mName.to_sym)
          @flower.send(mName.to_sym)
        end

        # ensures that ghost methods
        # can be called on this object
        def respond_to_missing?(mName, include_private=false)
          @flower.respond_to?(mName) || super
        end
      end
    end
  end
end
