module TfpMetaprogramming
  module MetaClass
    module Extensions
      # adds singleton_methods to
      # objects (via Object#extend)
      module ViaExtend
        # intended to be used in the singleton_class
        # of the class Extensions::Extender
        # functioning as a class method
        # @return [String]
        def extended_c_method
          'I am the class method defined in a module,
             and applied to the receiver via extend'
        end

        # intended to be used in the singleton_class
        # a an instance of class Extensions::Extender
        # functioning as an instance method
        # @return [String]
        def extended_i_method
          'I am the modules instance method, and using object#extend
           the receiving class can call me on an instance'
        end
      end
    end
  end
end
