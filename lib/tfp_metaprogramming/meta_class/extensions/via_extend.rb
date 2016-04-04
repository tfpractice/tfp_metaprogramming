module TfpMetaprogramming
  module MetaClass
    module Extensions
      module ViaExtend
        def extended_c_method
          'I am the class method defined in a module,
          	 and applied to the receiver via extend'
        end
      end
    end
  end
end
