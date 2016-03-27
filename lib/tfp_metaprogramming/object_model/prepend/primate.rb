# module TfpMetaprogramming
  # module ObjectModel
    # module Primate
      # def reverse
        # "I am the prepended Primate module and I output banana====ananab"

      # end
      # def self.show_nest
        # Module.nesting
      # end

    # end
  # end
# end


module TfpMetaprogramming::ObjectModel::Primate
  def reverse
    "I am the prepended Primate module and I output banana====ananab"
  end
  def self.show_nest
    Module.nesting
  end
end
