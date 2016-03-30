require_relative 'closure'

module TfpMetaprogramming
  module Callable
    class Bindr
      include Closure
      attr_accessor :word, :num, :info
      def initialize(word: 'bindr string', num: 10, info:"a place to bind")
        @word = word
        @num = num
        @info = info
      end
      def block_to_basic_yielder#(num1= num, num2 = num)
        basic_yielder(num, num){ num + num}

      end


    end
  end
end
