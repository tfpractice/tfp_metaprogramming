require_relative 'singlizer'
module TfpMetaprogramming
  module MetaClass
    module Singletons
      class SingleString < String

        def hermitize
          class << self
            def lifestyle
              'I live alone in the mountains.
        			 I write obscure mathematical texts.
        			 I am a hermit'
            end
          end

        end
      end
    end
  end
end
