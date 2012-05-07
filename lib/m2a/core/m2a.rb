module M2A
  class Renderer
    attr_accessor :width, :height

    def configure(&block)
      if block_given?
        yield self
      end
    end

    def render(meme)
      validate_args!

      if height && width
        size = "--size=#{width}x#{height}"
      elsif height
        size = "--height=#{height}"
      elsif width
        size = "--width=#{width}"
      end

      # XXX Bail is size is unset?

      puts "jp2a #{size} #{meme.path}"

      return `jp2a #{size} #{meme.path}`
    end

  private

    def validate_args!
    end

  end
end



