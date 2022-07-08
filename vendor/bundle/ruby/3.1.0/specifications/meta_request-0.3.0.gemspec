# -*- encoding: utf-8 -*-
# stub: meta_request 0.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "meta_request".freeze
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Dejan Simic".freeze]
  s.date = "2014-04-16"
  s.description = "Request your request".freeze
  s.email = ["desimic@gmail.com".freeze]
  s.homepage = "https://github.com/dejan/rails_panel/tree/master/meta_request".freeze
  s.rubygems_version = "3.3.7".freeze
  s.summary = "Supporting gem for Rails Panel (Google Chrome extension for Rails development)".freeze

  s.installed_by_version = "3.3.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<railties>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<rack-contrib>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<callsite>.freeze, [">= 0"])
  else
    s.add_dependency(%q<railties>.freeze, [">= 0"])
    s.add_dependency(%q<rack-contrib>.freeze, [">= 0"])
    s.add_dependency(%q<callsite>.freeze, [">= 0"])
  end
end
