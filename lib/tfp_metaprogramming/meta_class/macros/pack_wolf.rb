require_relative 'lone_wolf'
module TfpMetaprogramming
  module MetaClass
    module Macros
      class PackWolf < LoneWolf

        def self.deprecate(old_method, new_method)
          define_method(old_method) do |*args, &block|
            warn "Warning: #{old_method}() has been deprecated, use #{new_method} instead"
            send(new_method, *args, &block)
          end
        end

        def new_howl
          'I am a lone wolf howling'
        end
        def new_hunt
          'I am a lone wolf on the hunt'
        end
        def pack_howl
          'I am a wolf howling with the pack'
        end

        deprecate :howl, :new_howl
        deprecate :hunt, :new_hunt

      end
    end
  end
end
