require_relative 'unbound'
require_relative 'bound'
module TfpMetaprogramming
  module Callable
    module MethodObjects
      class Unbindr
        include Bound
        attr_accessor :num, :moniker
        def initialize(num: 10, moniker: "unleashed")
          @num = num
          @moniker = moniker
        end

        def get_b_method
          self.method :b_method
        end
        def call_b_method
          get_b_method.call

        end

      end
    end
  end
end
