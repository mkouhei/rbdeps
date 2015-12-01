# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rbdeps/version'

Gem::Specification.new do |spec|
  spec.name          = 'rbdeps'
  spec.version       = Rbdeps::VERSION
  spec.authors       = ['Kouhei Maeda']
  spec.email         = ['mkouhei@palmtb.net']
  spec.license       = 'GPL-3.0'

  spec.summary       = %q{parsing the RubyGem deps and generate graph data.}
  spec.description   = %q{The rbdeps provides parsing the Ruby gem dependencies and generating the metadata for graph. This libirary is a portable version for Ruby Gems a ``py-deps`` for Python.}
  spec.homepage      = 'https://github.com/mkouhei/rbdeps'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "simpecov"
  spec.add_development_dependency "rubocop"
end
