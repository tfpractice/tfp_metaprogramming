
module TfpMetaprogramming
  module Callable
    module Procs
      module Arity
        def arity_proc
          proc {|x,y| [x, y] }
        end
        def arity_lambda
          ->(x,y) { [x, y] }
        end
        def call_for_arity(&callable)
          # begin
          callable.call(1)

          # rescue ArgumentError => e
          # e
          # end
        end
      end
    end
  end
end
