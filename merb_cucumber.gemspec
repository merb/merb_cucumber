#!/usr/bin/env gem build
# -*- encoding: utf-8 -*-

require 'date'
require 'lib/merb_cucumber/version'

Gem::Specification.new do |gem|
  gem.name     = 'merb_cucumber'
  gem.version  = Merb::Cucumber::VERSION.dup
  gem.authors  = ["Roman Gonzalez", "David Leal", "Jacques Crocker"]
  gem.date     = Date.today.to_s
  gem.email    = 'merbjedi@gmail.com'
  gem.homepage = 'http://github.com/merb/merb_cucumber'
  gem.summary  = 'Cucumber integration for Merb'
  gem.description = gem.summary

  gem.has_rdoc = true 
  gem.require_paths = ['lib']
  gem.extra_rdoc_files = ['README.textile', 'LICENSE', 'TODO']
  gem.files = Dir['Rakefile', '{lib,spec}/**/*', 'README*', 'LICENSE*', 'TODO*', 'Generators'] & `git ls-files -z`.split("\0")

  gem.add_dependency 'merb-core', '>= 1.1.0'
  gem.add_dependency 'merb-gen',  '>= 1.1.0'
  gem.add_dependency 'cucumber',  '>= 0.7.2'
  # Until we fix with the cucumber guys the cucumber-merb
  # because element matchers were removed from cucumber.
  gem.add_dependency 'cucumber-rails'
  gem.add_development_dependency 'rspec', '>= 1.2.9'
end
