require_relative "../meta_mod"
require_relative "string_refinement"


class TfpMetaprogramming::ObjectModel::RString < String
	using StringRefinement
	def call_refinement
		refined_method
	end
	
	
end