module Mongoid
  module Graph
    extend ActiveSupport::Concern

    included do
      field :node_index, type: Integer
      field :_neighbours, type: Array

      after_initialize :generate_mongoid_neighbours
    end

    def connect_to(node)
      unless self._neighbours.include?(node.node_index)
        self._neighbours << node.node_index
        node._neighbours << self.node_index
      end
    end

    module ClassMethods

      def neighbours_of(node)
        all_in(node_index: node._neighbours.to_a)
      end

    end

    protected

    def generate_mongoid_neighbours
      self._neighbours = []
    end
  end
end