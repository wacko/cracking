# 8. *First Common Ancestor*:

# Design an algorithm and write code to find the first common ancestor of two nodes
# in a binary tree. Avoid storing additional nodes in a data structure.
# NOTE: This is not necessarily a binary search tree.

require_relative "./trees"

def first_common_ancestor(root, p, q)
  # TODO: implement function
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
end
