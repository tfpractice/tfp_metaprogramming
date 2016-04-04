require_relative 'via_include'
module TfpMetaprogramming
  module MetaClass
    module Extensions
      class Extender
        class << self
          include ViaInclude
        end
        attr_accessor :num
        def initialize(num: 40)
          @num = num
        end
      end
    end

  end
end
