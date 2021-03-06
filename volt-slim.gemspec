# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'volt/slim/version'

Gem::Specification.new do |spec|
  spec.name          = "volt-slim"
  spec.version       = Volt::Slim::VERSION
  spec.authors       = ["Андрей Большов"]
  spec.email         = ["asnow.dev@gmail.ru"]
  spec.license       = 'MIT'

  spec.summary       = %q{Allow you use slim templates in volt framework.}
  spec.description   = %q{This gem translate slim to volt template.}
  spec.homepage      = "http://github.com/asnow/volt-slim"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_dependency "volt", "~> 0.9.6"
  spec.add_dependency "slim"
  spec.add_dependency 'sorcerer'
end
