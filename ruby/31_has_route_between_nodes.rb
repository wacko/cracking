# 1. *Route Between Nodes*:

# Given a directed graph, design an algorithm to find out whether there is a route
# between two nodes.

GraphNode = Struct.new("GraphNode", :value, :neighbors)

def has_route_between_nodes(start, last, visited_nodes = Set.new)
  visited_nodes << start
  return true if start == last

  route = start.neighbors.find do |node|
    has_route_between_nodes(node, last, visited_nodes) unless visited_nodes.member?(node)
  end
  !route.nil?
end


RSpec.describe "has_route_between_nodes" do
  it "has route between connected nodes" do
    #     Graph:
    #     1 -> 2 -> 3 -> 4
    #     |         |
    #     5         6

    node1 = GraphNode.new(value: 1, neighbors: [])
    node2 = GraphNode.new(value: 2, neighbors: [])
    node3 = GraphNode.new(value: 3, neighbors: [])
    node4 = GraphNode.new(value: 4, neighbors: [])
    node5 = GraphNode.new(value: 5, neighbors: [])
    node6 = GraphNode.new(value: 6, neighbors: [])

    node1.neighbors = [node2, node5]
    node2.neighbors = [node3]
    node3.neighbors = [node4, node6]
    node6.neighbors = [node3] # Add a back edge for cycle

    expect(has_route_between_nodes(node1, node4)).to be true
    expect(has_route_between_nodes(node4, node1)).to be false # No reverse route
    expect(has_route_between_nodes(node2, node5)).to be false # No direct route
    expect(has_route_between_nodes(node1, node6)).to be true # Route via node 3
  end

  it "no route between disconnected nodes" do

    #    Graph:
    #    1   2   3
    #    |___|___|

    node1 = GraphNode.new(value: 1, neighbors: [])
    node2 = GraphNode.new(value: 2, neighbors: [])
    node3 = GraphNode.new(value: 3, neighbors: [])

    expect(has_route_between_nodes(node1, node2)).to be false # Disconnected nodes
    expect(has_route_between_nodes(node2, node3)).to be false # Disconnected nodes
    expect(has_route_between_nodes(node1, node3)).to be false # Disconnected nodes
  end

  it "no route between non-existing nodes" do
    node1 = GraphNode.new(value: 1, neighbors: [])
    node2 = GraphNode.new(value: 2, neighbors: [])

    expect(has_route_between_nodes(node1, node2)).to be false # Non-existing nodes
  end
end
