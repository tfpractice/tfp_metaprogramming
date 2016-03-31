
module TfpMetaprogramming
  # This module explores Callable Objects
  # such as Blocks, Procs, and Lambdas
  module Callable
    module Closure;end
    class Bindr;end
  end
end

# require_relative 'callable/bindr'
require_relative 'callable/instance_evaluator'
require_relative 'callable/procs'
