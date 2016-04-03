module TfpMetaprogramming
  module MetaClass
    module Macros
      class LoneWolf;end
      def self.force_wolf_to_contemplate_solipsism
        class << LoneWolf
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
