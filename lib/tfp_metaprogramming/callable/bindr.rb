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
      # define_method :show_locals do
      #   local_variables
      #   # end

      # end      # def create_local_variable(lVal = 2)
      # local_bindr_ivar = lVal
      # show_locals
      # local_variables
      # end
      #
      #
      # def show_locals
      # local_variables
      # end

      def block_to_basic_yielder#(num1= num, num2 = num)
        basic_yielder(num, num){ num + num}

      end


    end
  end
end
