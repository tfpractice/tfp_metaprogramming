require_relative "string_refinement"

class TfpMetaprogramming::ObjectModel::RString < String
	using TfpMetaprogramming::ObjectModel::StringRefinement
	def call_refinement
		refined_method
	end
	
	
end