require 'jekyll-watch'

module jekyll
    module Watcher
        extend self
        alias_method :original_listen_ignore_paths, :original_listen_ignore_paths

        def listen_ignore_paths(option)
            original_listen_ignore_paths(option) + [%r!.*\.TMP!i]
        end
    end
end