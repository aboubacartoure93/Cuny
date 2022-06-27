# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'super-pry/version'

Gem::Specification.new do |spec|
  spec.name          = 'super-pry'
  spec.version       = Super::Pry::VERSION
  spec.authors       = ['Steven Hancock']
  spec.email         = ['stevenh512@gmail.com']
  spec.summary       = %q{Meta gem to bundle Pry with several useful plugins.}
  spec.description   = %q{Meta gem to bundle Pry with several useful plugins.}
  spec.homepage      = 'https://github.com/stevenh512/super-pry'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'jazz_fingers'

  spec.add_development_dependency 'bump'
  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
end
