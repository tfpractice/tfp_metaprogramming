require_relative 'via_include'
require_relative 'via_extend'
module TfpMetaprogramming
  module MetaClass
    module Extensions
      class Extender
        class << self
          include ViaInclude
        end
        extend ViaExtend
        attr_accessor :num
        def initialize(num: 40)
          @num = num
        end
      end
    end
  end
end
