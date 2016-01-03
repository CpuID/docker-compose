# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'docker/compose/version'

Gem::Specification.new do |spec|
  spec.name          = "docker-compose"
  spec.version       = Docker::Compose::VERSION
  spec.authors       = ["Tony Spataro"]
  spec.email         = ["xeger@xeger.net"]

  spec.summary       = %q{Wrapper docker-compose with added Rake smarts.}
  spec.description   = %q{Provides an OOP interface to docker-compose and facilitates container-to-host and host-to-container networking.}
  spec.homepage      = "https://github.com/xeger/docker-compose"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "backticks", "~> 0.3"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
