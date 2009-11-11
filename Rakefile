require "rubygems"
require "rake"

# Assume a typical dev checkout to fetch the current merb-core version
require File.expand_path('../../merb/merb-core/lib/merb-core/version', __FILE__)

# Load this library's version information
require File.expand_path('../lib/merb_cucumber/version', __FILE__)

begin
  require 'jeweler'

  Jeweler::Tasks.new do |gemspec|
    gemspec.version     = Merb::Cucumber::VERSION
    gemspec.name        = "merb_cucumber"
    gemspec.description = "Cucumber integration for Merb"
    gemspec.summary     = "Cucumber integration for Merb"
    gemspec.authors     = [ "Roman Gonzalez", "David Leal", "Jacques Crocker" ]
    gemspec.email       = "merbjedi@gmail.com"
    gemspec.homepage    = "http://github.com/merb/merb_cucumber"
    gemspec.files       = %w(CHANGELOG LICENSE Rakefile README.textile TODO Generators) + Dir['{lib,spec}/**/*']
    # Runtime dependencies
    gemspec.add_dependency "merb-core", ">= 1.1.0.pre"
    gemspec.add_dependency "cucumber",  ">= 0.4.0"
    gemspec.add_dependency "merb-gen",  ">= 1.1.0.pre"
    # Development dependencies
    gemspec.add_development_dependency "rspec", ">= 1.2.9"
  end

  Jeweler::GemcutterTasks.new

rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.spec_opts << '--options' << 'spec/spec.opts' if File.exists?('spec/spec.opts')
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

desc 'Default: run spec examples'
task :default => 'spec'
