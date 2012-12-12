# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = "jahtml_formatter"
  s.version     = '1.0.4'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Martin Westin"]
  s.email       = ["martin@eimermusic.com"]
  s.homepage    = "https://github.com/eimermusic/jahtml_formatter"
  s.summary     = %q{Tweaked rspec html formatter. More suitable for pdf generation.}
  s.description = %q{Tweaked rspec html formatter. More suitable for pdf generation. At least for me.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('rspec', ["~> 2.0"])
end
