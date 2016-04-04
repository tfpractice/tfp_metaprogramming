module TfpMetaprogramming
  module MetaMethods
    module Aliases
      module PrependedWig
        def wig
          'a cleaner way to wrap my wig' << super
        end
      end
    end
  end
end
