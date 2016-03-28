# upon initialization, this class sets
# a mass attribute which can be publicly
# incremented or decremented
# but only reset privately
class TfpMetaprogramming::MetaMethods::Capsule
  attr_reader :mass
  def initialize(mass = 0)
    @mass = mass
  end

  def increment
    self.mass += 1
  end

  def decrement
    self.mass -= 1
  end

  private

  def mass=(val)
    @mass = val
  end
end
