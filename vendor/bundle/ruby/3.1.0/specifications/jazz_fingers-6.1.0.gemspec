# -*- encoding: utf-8 -*-
# stub: jazz_fingers 6.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "jazz_fingers".freeze
  s.version = "6.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Paulo Henrique Lopes Ribeiro".freeze]
  s.date = "2021-04-19"
  s.description = "Spending hours in the ruby console? Spruce it up and show off those hard-working hands! jazz_fingersreplaces IRB with Pry, improves output through amazing_print, and has some other goodies up its sleeves.".freeze
  s.email = "plribeiro3000@gmail.com".freeze
  s.homepage = "https://github.com/plribeiro3000/jazz_fingers".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0".freeze)
  s.rubygems_version = "3.3.7".freeze
  s.summary = "Exercise those fingers. Pry-based enhancements for the default Ruby console.".freeze

  s.installed_by_version = "3.3.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<amazing_print>.freeze, ["~> 1.3"])
    s.add_runtime_dependency(%q<pry>.freeze, ["~> 0.10"])
    s.add_runtime_dependency(%q<pry-byebug>.freeze, ["~> 3.4"])
    s.add_runtime_dependency(%q<pry-coolline>.freeze, ["~> 0.2"])
    s.add_development_dependency(%q<rubocop>.freeze, [">= 0"])
  else
    s.add_dependency(%q<amazing_print>.freeze, ["~> 1.3"])
    s.add_dependency(%q<pry>.freeze, ["~> 0.10"])
    s.add_dependency(%q<pry-byebug>.freeze, ["~> 3.4"])
    s.add_dependency(%q<pry-coolline>.freeze, ["~> 0.2"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0"])
  end
end
