# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'couchpotato_api/version'

Gem::Specification.new do |spec|
  spec.name          = "couchpotato_api"
  spec.version       = CouchpotatoApi::VERSION
  spec.authors       = ["kylegrantlucas"]
  spec.email         = ["kglucas93@gmail.com"]

  spec.summary       = %q{An api wrapper for the couchpotato api}
  spec.description   = %q{An api wrapper for the couchpotato api}
  spec.homepage      = "http://github.com/kylegrantlucas/couchpotato_api"
  spec.license       = "MIT"

  spec.add_runtime_dependency 'takeout'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
