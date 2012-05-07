module M2A
  extend self
  def new(*args)
    Renderer.new(*args)
  end
end

%w[m2a exceptions lookup_meme].each do |filename|
  require "m2a/core/#{filename}"
end

%w[cli].each do |filename|
  require "m2a/#{filename}"
end

# Check to make sure jp2a is installed
# FIXME win32
unless `which jp2a >/dev/null`
  STDERR.puts "jp2a not found in path, this will not go well"
end
