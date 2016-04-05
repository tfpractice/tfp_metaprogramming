require_relative 'flower'

module TfpMetaprogramming
  module MetaMethods
    module DynamicDefinition
      # uses method_missing? to call
      # flower description methods
      # as ghost methods
      class DynamicProxy
        attr_reader :flower

        def initialize(flower = TfpMetaprogramming::MetaMethods::DynamicDefinition::Flower.new )
          @flower = flower
        end

        # delegates missing methods to @flower
        # if @flower respnds to that call.
        # otherwise calls method_missing up
        # the ancestor chain (cref)
        #
        # @param [String,Symbol] m_name name of method
        def method_missing(m_name)
          super if !@flower.respond_to?(m_name.to_sym)
          @flower.send(m_name.to_sym)
        end

        # ensures that ghost methods
        # can be called on this object
        def respond_to_missing?(m_name, include_private = false)
          @flower.respond_to?(m_name) || super
        end
      end
    end
  end
end
