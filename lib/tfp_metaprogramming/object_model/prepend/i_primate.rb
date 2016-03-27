# This Module will be included in TfpMetaprogramming::ObjectModel::String
# to overwrite Object::String#reverse
module TfpMetaprogramming::ObjectModel::IPrimate
  # overwrites Object::String#reverse when included
  #
  # @return [String] "overwrites String#reverse: fruit====tiurf"
  def reverse
    "overwrites String#reverse: fruit====tiurf"
  end
  # returns information about the Module
  #
  # @return [String] "I am a the included primate (IPrimate) module and I override String#reverse"
  def primate
    "I am a the included primate (IPrimate) module and I override String#reverse"
  end
end
