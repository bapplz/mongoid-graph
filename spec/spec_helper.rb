require "rspec"
require "spork"
require "mongoid"
require "mongo-graph"
require "support/node"

Spork.prefork do

  Mongoid.configure do |config|
    name = "mongo-graph"
    config.master = Mongo::Connection.new.db(name)
  end

  RSpec.configure do |config|
    config.mock_with :rspec

    config.after :each do
      Mongoid.purge!
    end
  end
end

Spork.each_run do
  Mongoid.purge!
end