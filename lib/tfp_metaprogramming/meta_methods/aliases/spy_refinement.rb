module TfpMetaprogramming
  module MetaMethods
    module Aliases
      class SydneyBristow;end
      module SpyRefinement
        refine SydneyBristow do
          def wig
            'this is my refined wig'
          end
        end
      end
    end
  end
end
