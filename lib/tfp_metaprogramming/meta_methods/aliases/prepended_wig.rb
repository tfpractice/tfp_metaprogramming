module TfpMetaprogramming
  module MetaMethods
    module Aliases
      # This module will insert itself before
      # SydneyBristow in the cref
      module PrependedWig
        # as a result of its position in the cref
        # during method lookup, this method will
        # be called before all other wigs.
        # it also calls super to demonstrate
        # its capacity as a hook/wrapper
        # @return [String]
        def wig
          'a cleaner way to wrap my wig' << super
        end
      end
    end
  end
end
