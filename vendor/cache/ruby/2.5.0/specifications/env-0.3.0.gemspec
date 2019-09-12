# -*- encoding: utf-8 -*-
# stub: env 0.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "env".freeze
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Postmodern".freeze]
  s.date = "2012-05-28"
  s.description = "Provides a Ruby interface to common environment variables, used on Windows, Linux, BSD and OSX.".freeze
  s.email = "postmodern.mod3@gmail.com".freeze
  s.extra_rdoc_files = ["ChangeLog.md".freeze, "LICENSE.txt".freeze, "README.md".freeze]
  s.files = ["ChangeLog.md".freeze, "LICENSE.txt".freeze, "README.md".freeze]
  s.homepage = "https://github.com/postmodern/env#readme".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.7".freeze
  s.summary = "Provides a Ruby interface to common environment variables".freeze

  s.installed_by_version = "2.7.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rubygems-tasks>.freeze, ["~> 0.1"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2.4"])
      s.add_development_dependency(%q<yard>.freeze, ["~> 0.7"])
    else
      s.add_dependency(%q<rubygems-tasks>.freeze, ["~> 0.1"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2.4"])
      s.add_dependency(%q<yard>.freeze, ["~> 0.7"])
    end
  else
    s.add_dependency(%q<rubygems-tasks>.freeze, ["~> 0.1"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.4"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.7"])
  end
end
