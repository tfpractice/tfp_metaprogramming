require_relative './singletons/single_string'
module TfpMetaprogramming
  module MetaClass
    # A namespace for exploring the
    # singleton/eigen class and various
    # singleton method definitions
    module Singletons
      # using  def Obj.method, adds
      # #my_singleton to Singletons::SingleSting
      def self.add_my_singleton_to_single_string
        def SingleString.my_singleton
          'I am the my_singleton method defined in the singletons module'
        end
      end
    end
  end
end
