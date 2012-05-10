require "spec_helper"

describe Node do

  before :each do
    @first_node = Node.new(node_index: 1)
    @second_node = Node.new(node_index: 2)
  end

  it "should have 1 neighbour" do
    @first_node.connect_to @second_node
    @first_node.save!
    @second_node.save!
    Node.neighbours_of(@first_node).size.should == 1
  end

  it "should have neighbour with index 2" do
    @first_node.connect_to @second_node
    @first_node.save!
    @second_node.save!
    Node.neighbours_of(@first_node).first.node_index.should == 2
  end

  it "should connect a neighbour only once" do
    @first_node.connect_to @second_node
    @first_node.connect_to @second_node
    @first_node.save!
    @second_node.save!
    Node.neighbours_of(@first_node).size.should == 1
  end

  it "should have neighbours which he is connected to" do
    @third_node = Node.new(node_index: 3)
    @first_node.connect_to @second_node
    @first_node.save!
    @second_node.save!
    @third_node.save!
    Node.neighbours_of(@first_node).size.should == 1
  end

  it "should have neighbours after save" do
    @first_node.connect_to @second_node
    @first_node.save!
    @second_node.save!
    first_node = Node.where(node_index: 1).first
    Node.neighbours_of(first_node).size.should == 1
  end
end