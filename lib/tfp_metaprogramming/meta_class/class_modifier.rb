require_relative 'mod_class'

module TfpMetaprogramming
  module MetaClass
    # a namespace that modifies
    # the sister class MetaClass::ModClass
    module ClassModifier
      # adds a new method to the receiving
      # class via class_eval
      # @param [Class] rec_class
      def self.add_new_method_to_class(rec_class)
        rec_class.class_eval do
          # reports that a new instance
          # method has been defined
          # @return[String]
          def report_new_method
            'This method comes from the ClassModifier module'
          end
        end
      end
    end
  end
end
