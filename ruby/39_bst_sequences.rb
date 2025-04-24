# 9. *BST Sequences*: A binary search tree was created by traversing through an array from left to right and inserting each element.
# Given a binary search tree with distinct elements, print all possible arrays that could have led to this tree.

# EXAMPLE Input:
#   2
#  / \
# 1   3

# Output: [[2, 1, 3], [2, 3, 1]]

require_relative "./trees"

# bst_sequences(root: TreeNode) => [][]
def bst_sequences(root)
  # TODO: implement function
end


RSpec.describe "bst_sequences" do
  it "returns correct sequences for valid input with 3 nodes" do
    #   2
    #  / \
    # 1   3

    root1 = TreeNode.new(2, left: TreeNode.new(1), right: TreeNode.new(3))
    expect(bst_sequences(root1)).to match_array([
      [2, 1, 3],
      [2, 3, 1],
    ])
  end

  it "returns correct sequences for valid input" do
    #     5
    #    / \
    #   3   7
    #  / \ / \
    # 2  4 6  8

    root2 = TreeNode.new(5,
      left:  TreeNode.new(7, left: TreeNode.new(6), right: TreeNode.new(8)),
      right: TreeNode.new(3, left: TreeNode.new(2), right: TreeNode.new(4))
    )

    sequences = bst_sequences(root2)
    expect(sequences.length).to eq(80)
    expect(sequences).to match_array([
      [5, 3, 7, 2, 4, 6, 8],
      [5, 3, 7, 2, 6, 4, 8],
      [5, 3, 7, 4, 2, 6, 8],
      [5, 3, 7, 4, 6, 2, 8],
      [5, 7, 3, 2, 4, 6, 8],
      [5, 7, 3, 2, 6, 4, 8],
      [5, 7, 3, 4, 2, 6, 8],
      [5, 7, 3, 4, 6, 2, 8],
    ])
  end
end
