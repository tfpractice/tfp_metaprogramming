require_relative 'lone_wolf'
module TfpMetaprogramming
  module MetaClass
    module Macros
      # a subclass of LoneWolf that
      # deprecates some methods
      class PackWolf < LoneWolf
        # a class method that deprecates
        # an old_method, outputs a warning
        # to stderr, and calls the new_method
        # @param [Symbol, String] old_method
        # @param [Symbol, String] new_method
        def self.deprecate(old_method, new_method)
          define_method(old_method) do |*args, &block|
            warn "Warning: #{old_method}() has been deprecated, use #{new_method} instead"
            send(new_method, *args, &block)
          end
        end

        # an updated version of the
        # deprecated LoneWolf#howl and
        # has the identical functionality
        def new_howl
          'I am a lone wolf howling'
        end

        # an updated version of the
        # deprecated LoneWolf#hunt and
        # has the identical functionality
        def new_hunt
          'I am a lone wolf on the hunt'
        end

        # an instance method particular
        # to this subclass
        # @return [String]
        def pack_howl
          'I am a wolf howling with the pack'
        end

        # see(#deprecate)
        deprecate :howl, :new_howl

        # see(#deprecate)
        deprecate :hunt, :new_hunt
      end
    end
  end
end
