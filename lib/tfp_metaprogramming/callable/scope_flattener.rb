module TfpMetaprogramming
  module Callable
    ScopeFlattener = Module.new do
      attr_accessor :newVar

      @newVar = "hello I am hte newVar"

      local_flat_mvar =3

      define_method :show_locals do
        local_variables
      end

      define_method :increment_mvar do |addend = 5|
        local_flat_mvar += addend
      end
      define_method :mvar do
        local_flat_mvar
      end
      define_method :reset_mvar do
        local_flat_mvar = 3
      end
    end
  end
end
