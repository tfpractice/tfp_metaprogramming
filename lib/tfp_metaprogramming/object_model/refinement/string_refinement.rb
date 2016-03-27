# A refinement of Object::String that avoids monkeypatching
module TfpMetaprogramming::ObjectModel::StringRefinement
  refine String do
    # adds String#refined_method only within the scope of including modules
    #
    # @return [String]
    def refined_method
      'The String class has been refined with this aptly named refined method,
      and is limited to the scope of the including modules,
      thus avoiding #monkeyPatchingProblems'
    end
  end

  def self.lol
    return self
  end
end
