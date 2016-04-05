module TfpMetaprogramming
  module MetaClass
    # A class to  explore class_variables,
    # class_instance_variables, and to be
    # modified by sister module ClassModifier.
    class ModClass
      attr_reader :num
      def initialize(num: 5)
        @num = num
      end
      # @!scope class
      @class_ivar = 25

      # @!scope class
      @@c_var = 20
    end
  end
end
