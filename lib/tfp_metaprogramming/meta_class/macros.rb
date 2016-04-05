module TfpMetaprogramming
  module MetaClass
    # A module exploring class macros
    module Macros
      # a class to be modified by Macros
      # module, prematurely defined to
      # avoid Constant Lookup issues
      class LoneWolf; end

      # a clas method that adds the
      # LoneWolf.contemplate_solipsism
      # singleton_method
      def self.force_wolf_to_contemplate_solipsism
        # opens the LoneWolf singleton class
        class << LoneWolf
          # @return [String]
          def contemplate_solipsism
            "I am a lone wolf contemplating the bleakness
            of my reality. This is all due to a singleton method"
          end
        end
      end
    end
  end
end

require_relative './macros/pack_wolf'
