module TfpMetaprogramming
  module ObjectModel
    def self.description
      "this section is dedicated to investigating the ruby Object Model"
    end
  end
end


require_relative "./object_model/monkey_patch"
require_relative "./object_model/prepend"
require_relative "./object_model/refinement"
