require_relative 'capsule'

module TfpMetaprogramming
  module MetaMethods
    module CapsuleBreaker
      class Breaker
        attr_reader :capsule
        # constructor
        # @!attribute [TfpMetaprogramming::MetaMethods::Capsule] capsule
        def initialize(capsule  = TfpMetaprogramming::MetaMethods::CapsuleBreaker::Capsule.new())
          @capsule = capsule
        end
        # using Object#send, calls a private method Capsule#mass= to the
        # contained @capsule object, breaking encapsulation
        # @param [Integer] newMass
        def break_encapsulation(newMass = 10)
          self.capsule.send(:mass=, newMass)
        end
      end
    end
  end
end
