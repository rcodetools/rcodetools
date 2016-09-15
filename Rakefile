
PKG_REVISION = ".0"

require 'simplecov'
SimpleCov.start
task :coverage do
  SimpleCov.command_name 'Unit Tests'
  Rake::Task[:test].execute
end

$:.unshift "lib" if File.directory? "lib"
require 'rcodetools'
require 'rake/testtask'
RCT_VERSION  = Rcodetools::VERSION

desc "Run the unit tests in pure-Ruby mode ."
Rake::TestTask.new(:test) do |t|
  t.test_files = FileList['test/test*.rb']
  t.verbose = true
end

task :default => :test

desc "install by setup.rb"
task :install do
  sh "sudo ruby setup.rb install"
end

desc "release in rubyforge"
task :release => [:package] do 
  sh "rubyforge login"
  sh "rubyforge add_release rcodetools rcodetools #{RCT_VERSION} pkg/rcodetools-#{RCT_VERSION}.0.tar.gz "
  sh "rubyforge add_file rcodetools rcodetools #{RCT_VERSION} pkg/rcodetools-#{RCT_VERSION}.0.gem "
end

# vim: set sw=2 ft=ruby:
