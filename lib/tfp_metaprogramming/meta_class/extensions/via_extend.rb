module TfpMetaprogramming
  module MetaClass
    module Extensions
      module ViaExtend
        def extended_c_method
          'I am the class method defined in a module,
          	 and applied to the receiver via extend'
        end
        def extended_i_method
          'I am the modules instance method, and using object#extend
        	 the receiving class can call me on an instance'
        end
      end
    end
  end
end
