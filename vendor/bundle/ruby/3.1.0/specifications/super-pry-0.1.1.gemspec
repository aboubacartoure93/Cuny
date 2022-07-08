# -*- encoding: utf-8 -*-
# stub: super-pry 0.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "super-pry".freeze
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Steven Hancock".freeze]
  s.date = "2016-04-06"
  s.description = "Meta gem to bundle Pry with several useful plugins.".freeze
  s.email = ["stevenh512@gmail.com".freeze]
  s.homepage = "https://github.com/stevenh512/super-pry".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.7".freeze
  s.summary = "Meta gem to bundle Pry with several useful plugins.".freeze

  s.installed_by_version = "3.3.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<jazz_fingers>.freeze, [">= 0"])
    s.add_development_dependency(%q<bump>.freeze, [">= 0"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.6"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
  else
    s.add_dependency(%q<jazz_fingers>.freeze, [">= 0"])
    s.add_dependency(%q<bump>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.6"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
