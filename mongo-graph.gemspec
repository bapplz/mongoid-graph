# -*- encoding: utf-8 -*-
require File.expand_path('../lib/mongo_graph/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Venelin Valkov"]
  gem.email         = %w(venelin@bapplz.com)
  gem.description   = %q{Undirected graph implementation for Mongoid}
  gem.summary       = %q{Check who is connected to who, all withing the Mongoid context}
  gem.homepage      = "http://github.com/bapplz/mongo-graph"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "mongo-graph"
  gem.require_paths = %w(lib)
  gem.version       = MongoGraph::VERSION

  gem.add_development_dependency "rspec", "~>2.10.0"
  gem.add_development_dependency "mongoid-rspec", "~> 1.4.4"
  gem.add_development_dependency "gem-release", "~>0.3.1"
  gem.add_development_dependency "yard", "~>0.8.1"
  gem.add_development_dependency "spork", "~> 0.9.1"
  gem.add_development_dependency "guard", "~> 1.0.2"
  gem.add_development_dependency "guard-spork", "~> 0.7.1"
  gem.add_development_dependency "guard-rspec", "~> 0.7.0"

  gem.add_runtime_dependency "activesupport", "~> 3.2.3"
  gem.add_runtime_dependency "mongoid", "~> 2.4.9"
  gem.add_runtime_dependency "bson_ext", "~> 1.6.2"
end
