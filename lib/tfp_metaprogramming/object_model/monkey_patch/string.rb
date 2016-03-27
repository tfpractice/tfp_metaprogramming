# Leveraging Ruby's Open Classes to reopen Object::String and
# adds methods and instance variables
class String
  # monkepatches Object::String with String#monkey
  #
  # @return [String] I love bananas, and have opposable thumbs
  def monkey
    'I love bananas, and have opposable thumbs'
  end

  # creates an instance variable ape using
  #
  # @param [String] apeVal
  # @!attribute ape
  # @!method instance_variable_set
  def make_ape(apeVal = 'king kong')
    instance_variable_set('@ape', apeVal)
  end
end
