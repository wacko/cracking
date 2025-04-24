# 4. *Check Balanced*:

# Implement a function to check if a binary tree is balanced.
# For the purposes of this question, a balanced tree is defined to be a tree
# such that the heights of the two subtrees of any node never differ by more than one.

require_relative "./trees"

def check_balanced(tree)
  # TODO: implement function
end

RSpec.describe "check_balanced" do
  it "returns true for a balanced tree" do
    # Balanced tree:
    #      1
    #     / \
    #    2   3
    #   / \ / \
    #  4  5 6  7

    root = TreeNode.new(1,
      left: TreeNode.new(2,
        left: TreeNode.new(4),
        right: TreeNode.new(5)
        ),
      right: TreeNode.new(3,
        left: TreeNode.new(6),
        right: TreeNode.new(7)
        )
      )
    expect(check_balanced(root)).to be true
  end

  it "returns false for an unbalanced tree" do
     #  Unbalanced tree:
     #       1
     #      /
     #     2
     #    /
     #   3
     #  /
     # 4

     root = TreeNode.new(1,
      left: TreeNode.new(2,
        left: TreeNode.new(3,
          left: TreeNode.new(4)
          )
        )
      )
     expect(check_balanced(root)).to be false
   end

   it "returns true for an empty tree" do
    root = TreeNode.new(nil)
    expect(check_balanced(root)).to be true
  end
end
