# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'super-pry-rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'super-pry-rails'
  spec.version       = Super::Pry::Rails::VERSION
  spec.authors       = ['Steven Hancock']
  spec.email         = ['stevenh512@gmail.com']
  spec.summary       = %q{Meta gem to bundle better_errors, rails-footnotes, super-pry, and pry-rails.}
  spec.description   = %q{Meta gem to bundle better_errors, rails-footnotes, super-pry, and pry-rails.}
  spec.homepage      = 'https://github.com/stevenh512/super-pry-rails'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'better_errors'
  spec.add_dependency 'pry-rails'
  spec.add_dependency 'meta_request'
  spec.add_dependency 'rails-footnotes'
  spec.add_dependency 'railties'
  spec.add_dependency 'super-pry'

  spec.add_development_dependency 'bump'
  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
end
