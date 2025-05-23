# 8. *First Common Ancestor*:

# Design an algorithm and write code to find the first common ancestor of two nodes
# in a binary tree. Avoid storing additional nodes in a data structure.
# NOTE: This is not necessarily a binary search tree.

require_relative "./trees"

def first_common_ancestor(root, p, q)
  return nil unless root && p && q
  node = first_common_ancestor_rec(root, p, q)
  node == p || node == q ? nil : node
end

def first_common_ancestor_rec(root, p, q)
  return root if root == p || root == q

  left = first_common_ancestor_rec(root.left, p, q) if root.left
  right = first_common_ancestor_rec(root.right, p, q) if root.right

  return root if left && right
  return left || right
end


RSpec.describe "first_common_ancestor" do
  it "returns correct common ancestor for valid input" do
    #              1
    #             / \
    #            2   3
    #           / \ / \
    #          4  5 6  7

    root = TreeNode.new(1,
      left: TreeNode.new(2, left: TreeNode.new(4), right: TreeNode.new(5)),
      right: TreeNode.new(3, left: TreeNode.new(6), right: TreeNode.new(7)),
    )

    expect(first_common_ancestor(root, root.left, root.right)).to be(root) # Common ancestor of 2 and 3 is 1
    expect(first_common_ancestor(root, root.left.left, root.left.right)).to be(
      root.left,
    ) # Common ancestor of 4 and 5 is 2
    expect(
      first_common_ancestor(root, root.left.left, root.right.right),
    ).to be(root) # Common ancestor of 4 and 7 is 1
  end

  it "returns nil for nodes outside the tree" do
    #              1
    #             / \
    #            2   3
    #           / \ / \
    #          4  5 6  7  10?

    root = TreeNode.new(1,
      left: TreeNode.new(2, left: TreeNode.new(4), right: TreeNode.new(5)),
      right: TreeNode.new(3, left: TreeNode.new(6), right: TreeNode.new(7)),
    )

    expect(first_common_ancestor(root, root.left, TreeNode.new(10))).to be(nil) # Common ancestor of 2 and 3 is 1
  end

  it "returns nil for empty trees" do
    expect(first_common_ancestor(nil, TreeNode.new(1), TreeNode.new(2))).to be(nil) # no tree
  end

  it "returns nil when searching for empty nodes" do
    expect(first_common_ancestor(TreeNode.new(1), nil, TreeNode.new(1))).to be(nil) # nothing to search
  end
end
