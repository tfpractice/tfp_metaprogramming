module TfpMetaprogramming
  module Callable
    ScopeFlattener = Module.new do
      local_flat_mvar =3
      define_method :show_locals do
        local_variables
        # end

      end

    end
  end
end
