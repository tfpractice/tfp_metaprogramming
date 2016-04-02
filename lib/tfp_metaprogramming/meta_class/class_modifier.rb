require_relative 'mod_class'

module TfpMetaprogramming
  module MetaClass
    module ClassModifier
      def self.add_new_method_to_class(rec_class)
        rec_class.class_eval do
          def report_new_method
            'This method comes from the ClassModifier module'
          end
        end
      end
    end
  end
end
