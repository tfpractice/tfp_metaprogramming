module TfpMetaprogramming
  module MetaClass
    class SuperProxy
      attr_accessor :num
      def initialize(num: 30)
        @num = num
      end

      def description
        'I am the SuperProxy class and I exist
      	only as  a superclass for the yet to be defined
      	MetaClass::InlineClass'
      end
    end
  end
end
