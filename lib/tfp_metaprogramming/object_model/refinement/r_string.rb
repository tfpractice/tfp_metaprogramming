require_relative 'string_refinement'
# Inherits Object::String and refines it
# with the module TfpMetaprogramming::ObjectModel::StringRefinement
class TfpMetaprogramming::ObjectModel::RString < String
  using TfpMetaprogramming::ObjectModel::StringRefinement
  # calls StringRefinement#refined_method
  #
  # @note because the refinement is only active within the scope
  #	  where Module#using is called,  StringRefinement#refined_method
  #	  cannot be called from anywhere ObjectModel::RString is invoked.
  #	  RString#call_refinement is defined in this scope,
  #	  and thus will properly call  StringRefinement#refined_method
  #
  # @return [String] StringRefinement#refined_method
  def call_refinement
    refined_method
  end
end
