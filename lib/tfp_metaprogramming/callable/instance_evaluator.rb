require_relative 'bindr'
module TfpMetaprogramming
  module Callable
    class InstanceEvaluator
      attr_reader :bindr, :ivar

      def initialize(bindr = TfpMetaprogramming::Callable::Bindr.new )
        @bindr = bindr
        @ivar = 3
      end

      def bindr_self
        bindr.instance_eval { self }
      end

      def bindr_locals
        bindr.instance_eval { local_variables }
      end

      def bindr_class_locals
        bindr.class.instance_eval { local_variables }
      end

      def modify_bindr_info
        modText = 'called from evaluator'
        bindr.instance_eval { @info += modText }
      end

      def show_bindr_num_and_evaluator_ivar
        bindr.instance_eval do
          result = "bindr num = #{num}"
          # result +=
          if
            defined?(ivar)
            result += " evaluator ivar #{ivar}"
          else
            result += " within this scope, evaluator ivar is undefined"
          end
          result
        end
      end

      def execute_sum_bindr_num_and_evaluator_ivar
        bindr.instance_exec(ivar) do |ivar|
          result = "#{num+ivar} is the sum,
      		because bindr num is #{num},
      		and evaluator ivar is #{ivar}"
        end
      end
    end
  end
end
