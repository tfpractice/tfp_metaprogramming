module TfpMetaprogramming
  module ObjectModel
    module IPrimate
    	def reverse
    		"overwrites String#reverse: fruit====tiurf"
    		# 
    	end
    	def primate
    		"I am a the included primate (IPrimate) module and I override String#reverse"
    	end
# 
    end
  end
end
# 
# module TfpMetaprogramming::ObjectModel::IPrimate
#     def reverse
#         "overwrites String#reverse: fruit====tiurf"
        
#     end
#     def primate
#         "I am a the included primate (IPrimate) module and I override String#reverse"
#     end
# end