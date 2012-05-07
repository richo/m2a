Gem::Specification.new do |s|
  s.name      = "m2a"
  s.version   = "0.0.1"
  s.authors   = ["Rich Healey"]
  s.email     = ["richo@psych0tik.net"]
  s.homepage  = "http://github.com/richoH/m2a"
  s.summary   = "Tool and API for creating ascii versions of memes"
  s.description = s.summary

  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
