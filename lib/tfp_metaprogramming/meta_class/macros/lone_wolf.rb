module TfpMetaprogramming
  module MetaClass
    module Macros
      class LoneWolf
        class << self
          def resolve_solipsism
            'My loneliness is killing me. I must confess I still believe!'
          end
        end
        attr_accessor :name, :sex, :alpha
        def initialize(name: 'Kujo', sex: 'male', alpha: true)
          @name, @sex, @alpha = name, sex, alpha
        end

        def howl
          'I am a lone wolf howling'
        end
        def hunt
          'I am a lone wolf on the hunt'
        end

      end
    end
  end
end
