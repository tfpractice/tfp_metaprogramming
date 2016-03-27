module TfpMetaprogramming::ObjectModel::StringRefinement
  refine String do
    def refined_method
      "The String class has been refined with this aptly named refined method, and is limited to the scope of the including modules, thus avoiding #monkeyPatchingProblems"
    end
  end

end
