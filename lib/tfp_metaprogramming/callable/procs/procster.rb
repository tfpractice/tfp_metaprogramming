require_relative 'proc_mod'
require_relative 'arity'
require_relative 'returns'

module TfpMetaprogramming
  module Callable
    module Procs
      class Procster
        include ProcMod
        include Arity
        include Returns
        attr_accessor :num, :info
        def initialize(num: 5, info: "I am a procster")
          @num = num
          @info = info
        end

      end

    end
  end
end
