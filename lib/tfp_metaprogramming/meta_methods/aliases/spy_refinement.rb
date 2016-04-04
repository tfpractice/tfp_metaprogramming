module TfpMetaprogramming
  module MetaMethods
    module Aliases
      class SydneyBristow;end
      # A refinment module applied to
      # Alias::SydneyBristow
      module SpyRefinement
        refine SydneyBristow do
          # a wrapper into SydneyBristow#wig
          # @note only available within scope of
          #   'using Spyrefinement'
          # @return [String] '...this is my refined wig'
          def wig
            super << 'this is my refined wig'
          end
        end
      end
    end
  end
end
