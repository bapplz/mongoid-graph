require "mongoid-graph/version"
require "mongoid/graph"

# Represents a Undirected general graph stored via Mongo
#
# Example
#  first_node = Node.new(node_index: 1)
#  second_node = Node.new(node_index: 2)
#  first_node.connect_to second_node
#  first_node.save!
#  second_node.save!
#  Node.neighbours_of(first_node).size.should == 1
module MongoidGraph
end
