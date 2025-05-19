# 6. *Successor*:

# Write an algorithm to find the "next" node
# (i.e., in-order successor) of a given node in a binary search tree.
# You may assume that each node has a link to its parent.

require_relative "./trees"
class TreeNode
  attr_accessor :parent
end

def successor(node)
  candidate = nil
  if node.right
    candidate = node.right
    candidate = candidate.left while candidate.left
  else
    candidate = node.parent
    while candidate && candidate.left != node
      node = candidate
      candidate = node.parent
    end
  end
  candidate
end


RSpec.describe "successor" do
  it "returns correct in-order successor" do
    #          5
    #         / \
    #        3   7
    #       / \ / \
    #      2  4 6  8

    node2 = TreeNode.new(2)
    node4 = TreeNode.new(4)
    node6 = TreeNode.new(6)
    node8 = TreeNode.new(8)

    node3 = TreeNode.new(3, left: node2, right: node4)
    node7 = TreeNode.new(7, left: node6, right: node8)
    node5 = TreeNode.new(5, left: node3, right: node7)

    node2.parent = node3
    node4.parent = node3
    node3.parent = node5

    node6.parent = node7
    node8.parent = node7
    node7.parent = node5

    # Successors
    expect(successor(node2).value).to eq(3)
    expect(successor(node3).value).to eq(4)
    expect(successor(node4).value).to eq(5)
    expect(successor(node5).value).to eq(6)
    expect(successor(node6).value).to eq(7)
    expect(successor(node7).value).to eq(8)
    expect(successor(node8)).to be_nil
  end

  it "returns nil for node without successor" do
    node1 = TreeNode.new(1)
    expect(successor(node1)).to be_nil
  end
end
