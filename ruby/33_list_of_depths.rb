# 3. *List of Depths*:

# Given a binary tree, design an algorithm which creates a linked list
# of all the nodes at each depth (e.g., if you have a tree with depth D,
# you'll have D linked lists).

require_relative "./trees"

def list_of_depths(root)
  # TODO: implement function
end


RSpec.describe "list_of_depths" do
  it "creates linked lists of nodes at each depth" do
  #           1
  #          / \
  #         2   3
  #        / \   \
  #       4   5   6
  #      /
  #     7

    root = TreeNode.new(1,
      left: TreeNode.new(2,
        left: TreeNode.new(4,
          left: TreeNode.new(7),
        ),
        right: TreeNode.new(5),
      ),
      right: TreeNode.new(3,
        right: TreeNode.new(6),
      ),
    )

    expected_lists = [
      ListNode.new(1), # Depth 0: [1]
      ListNode.new(2, next_node: ListNode.new(3)), # Depth 1: [2, 3]
      ListNode.new(4, next_node: ListNode.new(5, next_node: ListNode.new(6))), # Depth 2: [4, 5, 6]
      ListNode.new(7), # Depth 3: [7]
    ]

    expect(list_of_depths(root)).to eq(expected_lists)
  end

  it "creates linked lists for single node tree" do
    root = TreeNode.new(1)
    expected_list = [ListNode.new(1)]
    expect(list_of_depths(root)).to eq(expected_list)
  end
end
