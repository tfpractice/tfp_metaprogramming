require_relative './capsule_breaker/capsule'

class TfpMetaprogramming::MetaMethods::CapsuleBreaker
  attr_reader :capsule
  def initialize(capsule  = TfpMetaprogramming::MetaMethods::CapsuleBreaker.new())
    @capsule = capsule
  end

  def break_encapsulation(newMass = 10)
    self.capsule.send(:mass=, newMass)
  end
end
