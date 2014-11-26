require "bundler/gem_tasks"

desc "Run doctests"
task :doctest do
  sh "bundle exec #{File.dirname(__FILE__)}/bin/rubydoctest #{File.dirname(__FILE__)}/lib/*.rb #{File.dirname(__FILE__)}/test/*.rb"
  exit($?.exitstatus)
end

task :test => :doctest