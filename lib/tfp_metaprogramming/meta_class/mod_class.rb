module TfpMetaprogramming
  module MetaClass
    class ModClass
      attr_reader :num
      def initialize(num: 5)
        @num = num
      end
      @class_ivar = 25
      @@c_var = 20


    end
  end
end
