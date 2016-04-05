module TfpMetaprogramming
  module MetaClass
    module Macros
      # A class that demonstrates class
      # macros and singleton methods
      class LoneWolf
        # opens up the singleton class
        class << self
          # a sister method to
          # LoneWolf.contemplate_solipsism
          # defined in the Namespace
          # @return [String] Britney Spears lyrics
          def resolve_solipsism
            'My loneliness is killing me. I must confess I still believe!'
          end
        end
        attr_accessor :name, :sex, :alpha
        def initialize(name: 'Kujo', sex: 'male', alpha: true)
          @name = name
          @sex = sex
          @alpha = alpha
        end

        # a howl method to be deprecated in subclass
        # @ return [String]
        def howl
          'I am a lone wolf howling'
        end

        # a hunt method to be deprecated in subclass
        # @ return [String]
        def hunt
          'I am a lone wolf on the hunt'
        end
      end
    end
  end
end
