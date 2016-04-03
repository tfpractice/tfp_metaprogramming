module TfpMetaprogramming
  module MetaClass
    module Singletons
      module Singlizer
        def self.eval_monog_onto_single_string(iString)
          iString.instance_eval do
            def self.monogamize
              self << ' I am monogamous'
            end
          end
        end

        def self.nest_mingle_method_onto_single_string(iString)
          def iString.mingle
            self << ' and I am ready to mingle'

          end
        end
      end
    end
  end
end
