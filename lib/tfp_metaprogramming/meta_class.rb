
module TfpMetaprogramming
  module MetaClass

    c_inline = class InlineClass
      self
    end

    define_method :c_inline do
      puts c_inline
    end
    c_inline
  end
end

require_relative './meta_class/class_modifier'
