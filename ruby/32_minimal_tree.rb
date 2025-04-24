# 2. *Minimal Tree*:

# Given a sorted (increasing order) array with unique integer elements,
# write an algorithm to create a binary search tree with minimal height.
#
# A binary search tree is a search where for each node,
# lesser elements are on the left node, and greater elements on the right node.
#
# Input: [1,2,3,4,5,6,7,8]
# Output:
#      5
#   2  |  7
# 1   3|6   8
#
#

require_relative "./trees"

def minimal_tree(sorted_array)
  # TODO: implement function
end


RSpec.describe "minimal_tree" do
  it "creates minimal height BST from sorted array" do
    sorted_array = [1, 2, 3]

    expected_tree = TreeNode.new(2,
      left: TreeNode.new(1),
      right: TreeNode.new(3)
      )
    expect(minimal_tree(sorted_array)).to eq(expected_tree)
  end

  it "creates minimal height BST from sorted array 5 length" do
    sorted_array = [1, 2, 3, 4, 5]
    expected_tree = TreeNode.new(3,
      left: TreeNode.new(2,
        left: TreeNode.new(1),
        ),
      right: TreeNode.new(5,
        left: TreeNode.new(4),
        ),
      )
    expect(minimal_tree(sorted_array)).to eq(expected_tree)
  end

  it "creates minimal height BST from sorted array 7 length" do
    sorted_array = [1, 2, 3, 4, 5, 6, 7]
    expected_tree = TreeNode.new(4,
      left: TreeNode.new(2,
        left: TreeNode.new(1),
        right: TreeNode.new(3),
        ),
      right: TreeNode.new(6,
        left: TreeNode.new(5),
        right: TreeNode.new(7),
        ),
      )
    expect(minimal_tree(sorted_array)).to eq(expected_tree)
  end

  it "returns toBeUndefined for empty array" do
    sorted_array = []
    expect(minimal_tree(sorted_array)).to be_nil
  end
end
