module TfpMetaprogramming
  module MetaMethods
    module Aliases
      class SydneyBristow
        def initialize(occupation: 'spy', hobby: 'throwing fierce lqqks')
          @occupation, @hobby = occupation, hobby
        end

        def throw_fierce_lqqks
          'Here I am, giving you Soviet-Satellite realness'
        end
      end
    end
  end
end
