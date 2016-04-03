require_relative './singletons/single_string'
module TfpMetaprogramming
  module MetaClass
    module Singletons
      def self.add_my_singleton_to_single_string
        def SingleString.my_singleton
          'I am the my_singleton method defined in the singletons module'
        end
      end
    end
  end
end
