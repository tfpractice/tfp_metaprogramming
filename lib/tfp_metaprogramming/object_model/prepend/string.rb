# require_relative "../../meta_mod"
require_relative "i_primate"
require_relative "primate"

# module TfpMetaprogramming
#   module ObjectModel
#     class String < String
#       include TfpMetaprogramming::ObjectModel::IPrimate
#       prepend TfpMetaprogramming::ObjectModel::Primate
#       # def initialize(args)

#       # end


#     end
#   end
# end
class TfpMetaprogramming::ObjectModel::String < String
  include TfpMetaprogramming::ObjectModel::IPrimate
  prepend TfpMetaprogramming::ObjectModel::Primate

  
end
