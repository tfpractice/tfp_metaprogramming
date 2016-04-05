module TfpMetaprogramming
  module MetaClass
    module Extensions
      # adds singleton_methods to
      # objects (via Object#include)
      module ViaInclude
        # applies an instance method to
        # the singleton class of Extensions::Extender
        # therby functioning as a class method
        def included_c_method
          'I am the class method defined in a module,
             and applied to the receiver via include'
        end
      end
    end
  end
end
