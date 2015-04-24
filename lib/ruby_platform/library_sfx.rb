module RubyPlatform
  class << self
    PLATFORM_SUFFIXES =
    {
      'darwin' => '.dylib',
      'linux'  => '.so',
      'mingw'  => '.dll',
    }

    def library_sfx
        p = RUBY_PLATFORM
        res = nil
        PLATFORM_SUFFIXES.keys.each do
          |key|
          if p =~ /#{key}/
            res = PLATFORM_SUFFIXES[key]
            break
          end
        end
        raise StandardError, "Platform #{p} unknown" unless res
        res
    end

  end

end
