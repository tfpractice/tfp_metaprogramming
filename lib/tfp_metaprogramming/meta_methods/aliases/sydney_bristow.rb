require_relative 'around_alias'
require_relative 'spy_refinement'
require_relative 'prepended_wig'

module TfpMetaprogramming
  module MetaMethods
    module Aliases
      # A class exercising espionage and method_aliases
      class SydneyBristow
        include AroundAlias
        # due to the nature of refinements only calls
        # made on the implicit receiver will
        # make the proper calls to #wig
        using SpyRefinement

        # prepends the PrependedWig module to
        # the cref, overriding methods defined
        # in later modules (including the clas itself)
        def self.prepend_wig
          prepend PrependedWig
        end

        def initialize(occupation: 'spy', hobby: 'throwing fierce lqqks')
          @occupation = occupation
          @hobby = hobby
        end

        # throws fierce lqqks ideal for international malfeasance
        # @return [String]
        def throw_fierce_lqqks
          'Here I am, giving you Soviet-Satellite realness'
        end

        # aliases #throw_firece_lqqks, preseving
        # original functionality in case of override
        alias_method :fierce_looks_by_proxy, :throw_fierce_lqqks

        # an override of AroundAlias#around_espionage
        # which appeneds the orginal, unaltered #around_espionage
        # method via its alias AroundAlias#convolutions
        # @return [String]
        def around_espionage
          'this method is overriding #around_alias
          defined in the module, but will concateate
          the previously defined method, using the
          #convolutions alias defined in the included module.
          here it comes' << convolutions
        end

        # A wig method to be overwritten
        # by Aliases::SpyRefinement
        # and Aliases::PrependedWig
        # @return [String] 'I have a regular wig'
        def wig
          'I have regular wig.'
        end

        # because SydneyBristow is currently the only scope
        # calling 'using Spyrefinement' the only way
        # to call SpyRefinement#wig is to use the implicit receiver
        # @return [String] a refined version of #wig
        def call_wig
          wig
        end
      end
    end
  end
end
