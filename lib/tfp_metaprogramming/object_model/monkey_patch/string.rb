class String
  def monkey
    "I love bananas, and have opposable thumbs"
  end
  def make_ape(apeVal = "king kong")
  	instance_variable_set("@ape", apeVal)
  	
  end

end
