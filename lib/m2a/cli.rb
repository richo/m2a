module M2A::CLI
  extend self

  def run!
    opts = Argparse::Argparser.new.opts
    # M2A.configure do |conf|
    #   conf.width = opts.width
    #   conf.height = opts.height
    # end

    meme = opts.meme

  end

end


%w[argparse].each do |filename|
  require "m2a/cli/#{filename}"
end
