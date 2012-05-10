# Mongoid graph

Undirected graph implementation for Mongoid

## Installation

Add this line to your application's Gemfile:

    gem 'mongoid-graph'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mongoid-graph

## Usage

```ruby
  first_node = Node.new(node_index: 1)
  second_node = Node.new(node_index: 2)
  first_node.connect_to second_node
  first_node.save!
  second_node.save!
  Node.neighbours_of(first_node).size.should == 1
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
