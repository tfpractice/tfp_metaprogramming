module TfpMetaprogramming
  module MetaClass
    # a class that acts specifically as
    # a parameter to inline class definition
    # in MetaClass#define_inline_class
    class SuperProxy
      attr_accessor :num
      def initialize(num: 30)
        @num = num
      end

      # a description of this class and
      # its role within the MetaClass module
      # @return [String]
      def description
        'I am the SuperProxy class and I exist
        only as  a superclass for the yet to be defined
        MetaClass::InlineClass'
      end
    end
  end
end
