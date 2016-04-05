
module TfpMetaprogramming
  module MetaMethods
    module CapsuleBreaker
      # upon initialization, this class sets
      # a mass attribute which can be publicly
      # incremented or decremented
      # but only reset privately
      class Capsule
        attr_reader :mass
        def initialize(mass = 0)
          @mass = mass
        end

        # increments mass by 1
        def increment
          self.mass += 1
        end

        # decrements mass by 1
        def decrement
          self.mass -= 1
        end

        private

        # resets the mass to val param
        # @param [Numeric] val
        def mass=(val)
          @mass = val
        end
      end
    end
  end
end
