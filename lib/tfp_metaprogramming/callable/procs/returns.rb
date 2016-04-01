
module TfpMetaprogramming
  module Callable
    module Procs
      module Returns
        def return_proc
          proc { return 20}
        end
        def return_lambda
          -> { return 20 }
        end

        def double_callable(&callable)
          cResult = callable.call
          return cResult * 2

        end

      end
    end
  end
end
