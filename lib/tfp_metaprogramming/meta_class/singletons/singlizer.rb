module TfpMetaprogramming
  module MetaClass
    module Singletons
      module Singlizer
        def self.add_monog_to_single_string(iString)
          iString.instance_eval do
            def self.monogamize
              self <<' I am monogamous'
            end
          end
        end
      end
    end
  end
end
