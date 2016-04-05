require_relative 'capsule'

module TfpMetaprogramming
  module MetaMethods
    module CapsuleBreaker
      # A module that breaks encapuslation
      # by calling private methods on
      # Capsule via Object#send
      class Breaker
        attr_reader :capsule
        def initialize(capsule  = TfpMetaprogramming::MetaMethods::CapsuleBreaker::Capsule.new())
          @capsule = capsule
        end

        # calls private method Capsule#mass= to the
        # contained @capsule object, breaking encapsulation
        # @param [Integer] newMass
        def break_encapsulation(newMass = 10)
          self.capsule.send(:mass=, newMass)
        end
      end
    end
  end
end
