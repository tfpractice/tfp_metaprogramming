module TfpMetaprogramming
  module Callable
    # Demonstrates the various ways blocks act as closures
    module Closure
      # if block given, sums n1 and
      # the block return value,
      # else sums two input params
      def basic_yielder(n1, n2)
        block_given? ? (n1 + yield(n1,n2) ): n1+ n2
      end
      def create_local_variable(lVal = 2)
        local_bindr_ivar = lVal
        # show_locals
        local_variables
      end
      # def show_locals
      # local_variables
      # end

    end
  end
end
