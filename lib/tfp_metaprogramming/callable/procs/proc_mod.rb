module TfpMetaprogramming
  module Callable
    module Procs
      module ProcMod

        def deferred_increment
          Proc.new { |addend| addend += num }
        end

        def call_increment(val)
          deferred_increment.call(val)
        end

        def xy_lambda
          lambda { |x, y| x + y }
        end

        def xy_to_ampersand_pass
          ampersand_pass(num, num, &xy_lambda)
        end

        def ampersand_pass(x, y, &block)
          ampersand_catch(x,y, &block)
        end

        def ampersand_catch(x,y)
          yield(x,y)
        end

        def info_lambda
          -> { "#{info} and I am being called from a lambda"}
        end

        def proc_proxy(&my_proc)
          my_proc
        end

      end
    end
  end
end
