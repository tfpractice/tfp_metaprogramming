module TfpMetaprogramming
  module MetaClass
    module Singletons
      # a module that defines methods
      # via Object#instance_eval rather
      # than through module inclusion
      module Singlizer
        # defines SingleString#monogamize
        # via instance_eval
        # @param [SingleString, String] i_string
        def self.eval_monog_onto_single_string(i_string)
          i_string.instance_eval do
            # appends "I am monogamous" to i_string
            def self.monogamize
              self << ' I am monogamous'
            end
          end
        end

        # defines SingleString#mingle
        # via nested method definition
        # @param [SingleString, String] i_string
        def self.nest_mingle_method_onto_single_string(i_string)
          def i_string.mingle
            # appends " and I am ready to mingle" to i_string
            self << ' and I am ready to mingle'
          end
        end
      end
    end
  end
end
