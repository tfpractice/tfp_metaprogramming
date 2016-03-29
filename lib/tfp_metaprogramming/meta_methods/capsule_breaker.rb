module TfpMetaprogramming
  module MetaMethods
    # Leverages Ruby's dynamic_dispatch to
    # break encapsulation on the @capsule object
    module CapsuleBreaker
      class Capsule;end
      class Breaker;end
    end
  end
end

require_relative './capsule_breaker/breaker'
