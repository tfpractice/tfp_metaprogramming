module TfpMetaprogramming
  module MetaClass
    module Macros
      class LoneWolf
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
