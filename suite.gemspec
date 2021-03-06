# -*- encoding: utf-8 -*-
require File.expand_path('../lib/suite/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Mal Curtis"]
  gem.email         = ["mal@mal.co.nz"]
  gem.description   = %q{All the stuff that make front end web development fun, in one simple toolkit}
  gem.summary       = gem.description
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "suite"
  gem.require_paths = ["lib"]
  gem.version       = Suite::VERSION


  gem.add_development_dependency "rspec", "~> 2.6"
  gem.add_dependency "thor"
  gem.add_dependency "goliath"
  gem.add_dependency "mime-types"
  gem.add_dependency "haml"
  gem.add_dependency "sprockets"
  gem.add_dependency "sprockets-sass"
  gem.add_dependency "coffee-script"
  gem.add_dependency "compass"
  gem.add_dependency "yui-compressor"

end
