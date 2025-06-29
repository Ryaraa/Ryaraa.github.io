require 'jekyll-watch'

module Jekyll
    module Watcher
        extend self
        alias_method :original_listen_ignore_paths, :listen_ignore_paths

        def listen_ignore_paths(option)
            original_listen_ignore_paths(option) + [%r!.*\.TMP!i]
        end
    end
end