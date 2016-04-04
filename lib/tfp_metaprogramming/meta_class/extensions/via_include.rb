module TfpMetaprogramming
  module MetaClass
    module Extensions
      module ViaInclude
        def included_c_method
          'I am the class method defined in a module,
          	 and applied to the receiver via include'
        end
      end
    end
  end
end