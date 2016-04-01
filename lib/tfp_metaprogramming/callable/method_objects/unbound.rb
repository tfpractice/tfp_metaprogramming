module TfpMetaprogramming
  module Callable
    module MethodObjects
      module Unbound
        def unmethod
          "this is the unmethod called from the Unbound module"
        end
        def get_unmethod
          self.method :unmethod

        end
      end
    end
  end
end
