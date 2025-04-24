# 5. *Validate BST*:

# Implement a function to check if a binary tree is a binary search tree.

require_relative "./trees"

def validate_bst(node)
  # TODO: implement function
end


RSpec.describe "validate_bst" do
  it "returns true for a valid BST" do
    #  Valid BST:
    #       2
    #      / \
    #     1   3

    valid_bst = TreeNode.new(2,
      left: TreeNode.new(1),
      right: TreeNode.new(3),
    )
    expect(validate_bst(valid_bst)).to be true
  end

  it "returns false for an invalid BST" do

    #   Invalid BST:
    #        1
    #       / \
    #      2   3

    invalid_bst = TreeNode.new(1,
      left: TreeNode.new(2),
      right: TreeNode.new(3),
    )
    expect(validate_bst(invalid_bst)).to be false
  end

  it "returns false for an invalid BST #2" do

    # Invalid BST:
    #      3
    #     / \
    #    2   5
    #   / \
    #  1   4

    invalid_bst = TreeNode.new(3,
      left: TreeNode.new(2,
        left: TreeNode.new(1),
        right: TreeNode.new(4)
      ),
      right: TreeNode.new(5)
    )
    expect(validate_bst(invalid_bst)).to be false
  end

  it "returns true for an empty tree" do
    emptyTree = TreeNode.new(nil)
    expect(validate_bst(emptyTree)).to be true
  end

  it "returns true for a single node tree" do
    single_node_tree = TreeNode.new(5)
    expect(validate_bst(single_node_tree)).to be true
  end
end
