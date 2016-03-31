require_relative 'bindr'

module TfpMetaprogramming
  module Callable
    class InstanceEvaluator
      def initialize(bindr = TfpMetaprogramming::Callable::Bindr.new )
        @bindr = bindr
      end


    end
  end
end
