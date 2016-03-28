require_relative './capsule_breaker/capsule'
# Leverages Ruby's dynamic_dispatch to
# break encapsulation on the @capsule object
class TfpMetaprogramming::MetaMethods::CapsuleBreaker
  attr_reader :capsule
  # constructor
  # @!attribute [TfpMetaprogramming::MetaMethods::Capsule] capsule
  def initialize(capsule  = TfpMetaprogramming::MetaMethods::Capsule.new())
    @capsule = capsule
  end

  # using Object#send, calls a private method Capsule#mass= to the
  # contained @capsule object, breaking encapsulation
  # @param [Integer] newMass
  def break_encapsulation(newMass = 10)
    self.capsule.send(:mass=, newMass)
  end
end
