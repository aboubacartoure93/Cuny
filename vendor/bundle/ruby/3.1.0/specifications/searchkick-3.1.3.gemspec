# -*- encoding: utf-8 -*-
# stub: searchkick 3.1.3 ruby lib

Gem::Specification.new do |s|
  s.name = "searchkick".freeze
  s.version = "3.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Andrew Kane".freeze]
  s.date = "2019-04-12"
  s.email = "andrew@chartkick.com".freeze
  s.homepage = "https://github.com/ankane/searchkick".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2".freeze)
  s.rubygems_version = "3.3.7".freeze
  s.summary = "Intelligent search made easy with Rails and Elasticsearch".freeze

  s.installed_by_version = "3.3.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<activemodel>.freeze, [">= 4.2"])
    s.add_runtime_dependency(%q<elasticsearch>.freeze, [">= 5"])
    s.add_runtime_dependency(%q<hashie>.freeze, [">= 0"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
  else
    s.add_dependency(%q<activemodel>.freeze, [">= 4.2"])
    s.add_dependency(%q<elasticsearch>.freeze, [">= 5"])
    s.add_dependency(%q<hashie>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
