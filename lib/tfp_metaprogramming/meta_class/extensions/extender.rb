require_relative 'via_include'
require_relative 'via_extend'
module TfpMetaprogramming
  module MetaClass
    module Extensions
      # receives various methods from
      # ViaInclude and ViaExtendModules
      class Extender
        # opens eigenclass to include
        # ViaInclude instance methods
        # as class methods
        class << self
          include ViaInclude
        end
        # using Object#extend, instance
        # methods from ViaExtends are added
        # as class methods
        extend ViaExtend
        attr_accessor :num
        def initialize(num: 40)
          @num = num
        end

        # applies Object#eextend
        # to an instance of this class
        # allowing singleton_methods on
        # specific instances
        def extend_instance
          self.extend ViaExtend
        end
      end
    end
  end
end
