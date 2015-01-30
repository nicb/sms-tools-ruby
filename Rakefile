# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://guides.rubygems.org/specification-reference/ for more options
  gem.name = "sms-tools-ruby"
  gem.homepage = "http://github.com/nicb/sms-tools-ruby"
  gem.license = "GNU GPL 2.0"
  gem.summary = %Q{A version of the sms-tools (https://github.com/MTG/sms-tools) (re-written in ruby)}
  gem.description = %Q{The original package is a sound analysis/synthesis tools for music applications written in python (with a bit of C). This package is an attempt to write a ruby gem that mimicks closely the behaviour of the original python package, though respecting the classical ruby 'convention over configuration' paradigm.}
  gem.email = "n.bernardini@conservatoriosantacecilia.it"
  gem.authors = ["Nicola Bernardini, Anna Terzaroli, Giuseppe Silvi"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

desc "Code coverage detail"
task :simplecov do
  ENV['COVERAGE'] = "true"
  Rake::Task['test'].execute
end

task :default => :test

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "sms-tools-ruby #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

require "rake/extensiontask"
Rake::ExtensionTask.new "util_functions" do |ext|
  ext.lib_dir = "ext/util_functions"
end
