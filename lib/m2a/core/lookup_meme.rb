module M2A
  extend self

  def lookup_meme(meme)
    Meme.new(_lookup_meme(meme))
  end

  def _lookup_meme(meme)
    case meme
    when "success kid"
      return "data/success_kid.jpg"
    else
      if File.exist?(meme)
        return meme
      else
        return nil
      end
    end
  end

  class Meme
    attr_accessor :path
    def initialize(meme_path)
      @path = meme_path
    end
  end

end
