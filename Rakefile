require "bundler/gem_tasks"
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |t, task_args|
  t.rspec_opts = "--tag ~int"
end

task :default => :spec

RSpec::Core::RakeTask.new(:int) do |t, task_args|
  t.rspec_opts = "--tag int"
end
