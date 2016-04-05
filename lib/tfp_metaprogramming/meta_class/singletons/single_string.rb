require_relative 'singlizer'
module TfpMetaprogramming
  module MetaClass
    module Singletons
      # a class inheriting from Object::String
      # focusing specifically on singleton methods
      class SingleString < String
        # adds the #lifestyle method to
        # the singleton class of a specific
        # instance of SingleString
        def hermitize
          class << self
            # describes the even deeper
            # singleness of a particular object
            # @return [String]
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
