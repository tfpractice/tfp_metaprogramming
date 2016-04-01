require_relative 'unbound'
module TfpMetaprogramming
  module Callable
    module MethodObjects
      class Unbindr
        attr_accessor :num, :moniker
        def initialize(num: 10, moniker: "unleashed")
          @num = num
          @moniker = moniker
        end


      end
    end
  end
end
