require_relative 'super_proxy'
module TfpMetaprogramming
  module MetaClass
    # using the  scope_flattened
    # define_singleton_method,
    # MetaClass#create_inline_class defines
    # a subclass of MetaClass::SuperProxy
    # and then names it InlineClass
    # @return [Class] MetaClass::InlineClass
    self.define_singleton_method :create_inline_class do
      c = Class.new(SuperProxy) do
        # describes the specificity
        # of this to this sublcass
        # @return [String]
        def inline_method
          'I am the inline_method called from the dynamically
          defined method MetaClass#create_inline_class'
        end
      end
      InlineClass = c
    end
  end
end
