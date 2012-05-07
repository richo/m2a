module M2A::CLI
  extend self

  def run!
    opts = Argparse::Argparser.new.opts
    m2a = M2A.new.tap do |m2a|
      m2a.configure do |conf|
        conf.width = opts.width if opts.width
        conf.height = opts.height if opts.height
      end
    end

    meme = M2A.lookup_meme(opts.meme)

    puts m2a.render(meme)

  end

end


%w[argparse].each do |filename|
  require "m2a/cli/#{filename}"
end
