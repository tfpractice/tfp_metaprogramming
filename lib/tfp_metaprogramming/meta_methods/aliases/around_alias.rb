module TfpMetaprogramming
  module MetaMethods
    module Aliases
      # Handles aliasing a method that SydneyBristow will override
      module AroundAlias
        # outputs text describing an around alias
        def around_espionage
          'I demonstrate the complicated nature
           of both government espionage and rubys
           around_aliases'
        end

        # aliases #around_alias to preserve original
        # functionality in case of overwrite
        alias_method :convolutions, :around_espionage
      end
    end
  end
end
