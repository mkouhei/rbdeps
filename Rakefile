require "bundler/gem_tasks"
require 'rubocop/rake_task'
require "rspec/core/rake_task"

Rubocop::RakeTask.new(:rubocop) do |task|
  task.patterns = ['lib/**/*.rb', 'spec/**/*.rb']
end

RSpec::Core::RakeTask.new(:spec)

task :default => :spec
