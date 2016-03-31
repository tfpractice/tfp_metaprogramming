require_relative 'closure'
require_relative 'scope_flattener'

module TfpMetaprogramming
  module Callable
    # Demonstrates Scope gates, local Variables
    # Blocks and Bindings
    class Bindr
      include Closure
      include ScopeFlattener
      attr_accessor :word, :num, :info

      def initialize(word: 'bindr string', num: 10, info:'a place to bind')
        @word = word
        @num = num
        @info = info
      end
      #@!group local_class_variables
      local_bindr_cvar = 2
      phantom = 'the Phantom of the Opera'
      #@!endgroup local_class_variables

      # a dynamically defined method
      # which flattens scope and
      # calls the gated_phantom method
      # with a pre-set catchprase block
      # utilizing the phantom local variable
      define_method :scoped_phantom do
        gated_phantom { |catchphrase| "I am the #{phantom}, #{catchphrase}" }
      end

      def gated_phantom
        return phantom = 'Sith Lord' unless block_given?
        yield('Bow to my will!') if block_given?
      end

      define_method :show_bindr_locals do
        local_variables
      end

      def block_to_basic_yielder
        basic_yielder(num, num){ num + num}
      end
    end
  end
end
