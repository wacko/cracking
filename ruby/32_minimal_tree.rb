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
  return nil if sorted_array.empty?
  size = sorted_array.length
  pivot = size / 2

  left = minimal_tree sorted_array[...pivot] if size >= 2
  right = minimal_tree sorted_array[pivot+1..] if size >= 3

  TreeNode.new(sorted_array[pivot], left: left, right: right)
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

  it "returns nil for empty array" do
    sorted_array = []
    expect(minimal_tree(sorted_array)).to be_nil
  end
end
