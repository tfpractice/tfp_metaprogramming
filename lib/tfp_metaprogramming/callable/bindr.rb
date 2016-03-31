require_relative 'closure'
require_relative 'scope_flattener'

module TfpMetaprogramming
  module Callable
    class Bindr
      include Closure
      include ScopeFlattener
      attr_accessor :word, :num, :info
      def initialize(word: 'bindr string', num: 10, info:"a place to bind")
        @word = word
        @num = num
        @info = info
      end

      local_bindr_cvar = 2

      define_method :show_bindr_locals do
        local_variables
      end

      def block_to_basic_yielder
        basic_yielder(num, num){ num + num}
      end
    end
  end
end
