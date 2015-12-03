$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'rbdeps'
require 'simplecov'


SimpleCov.start do
  add_filter '/\.bundle/'
  add_filter '/vendor/'
end

if ENV['CI']
  require 'coveralls'
  Coveralls.wear!

  SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
    Coveralls:SimpleCov::Formatter]
  SimpleCov.start :test_frameworks
end

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'
end
