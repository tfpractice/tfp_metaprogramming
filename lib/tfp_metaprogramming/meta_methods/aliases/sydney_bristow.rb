require_relative 'around_alias'
require_relative 'spy_refinement'

module TfpMetaprogramming
  module MetaMethods
    module Aliases
      class SydneyBristow
        include AroundAlias
        using SpyRefinement

        def initialize(occupation: 'spy', hobby: 'throwing fierce lqqks')
          @occupation, @hobby = occupation, hobby
        end

        def throw_fierce_lqqks
          'Here I am, giving you Soviet-Satellite realness'
        end
        alias :fierce_looks_by_proxy :throw_fierce_lqqks

        def around_espionage
          'this method is overriding #around_alias
          defined in the module, but will concateate
          the previously defined method, using the
          #convolutions alias defined in the included module.
          here it comes' << convolutions
        end
        def wig
          'I have regular wig.'
          # wig
        end
        def call_wig
          wig
        end
        # alias :old_wig :wig
      end
    end
  end
end
