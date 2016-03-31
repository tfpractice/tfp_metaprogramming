module TfpMetaprogramming
  module Callable
    module Procs
      module ProcMod
        def deferred_increment
          Proc.new {|addend| addend += 1}
        end
        def proc_increment(val)
          deferred_increment.call(val)
        end
      end
    end
  end
end
