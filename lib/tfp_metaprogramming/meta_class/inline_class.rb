require_relative 'super_proxy'
module TfpMetaprogramming
  module MetaClass
    self.define_singleton_method :create_inline_class do
      c = Class.new(SuperProxy) do
        def inline_method
          'I am the inline_method called from the dynamically
          defined method MetaClass#create_inline_class'
        end
      end
      InlineClass = c
    end
  end
end
