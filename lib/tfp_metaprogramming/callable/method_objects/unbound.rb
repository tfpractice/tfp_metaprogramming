module TfpMetaprogramming
  module Callable
    module MethodObjects
      module Unbound
        def unmethod
          "this is the unmethod called from the Unbound module"
        end
        def self.get_unmethod
          self.instance_method :unmethod

        end
      end
    end
  end
end
