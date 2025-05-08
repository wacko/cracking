# Write the basic tree algorithms of Depth-first-search and Breadth-first search.

require_relative "./trees"

class Tree
  def bfs(node, &block)
    yield node.value
    nodes = []
    nodes << node.left if node.left
    nodes << node.right if node.right

    while node = nodes.shift
      yield node.value
      nodes << node.left if node.left
      nodes << node.right if node.right
    end      
  end

  def dfs(node, &block)
    yield node.value
    dfs(node.left, &block) if node.left
    dfs(node.right, &block) if node.right
  end
end


RSpec.describe "Trees" do
  it "dfs navigates the tree in order" do
    root = TreeNode.new(1,
      left: TreeNode.new(2,
        left: TreeNode.new(3),
        right: TreeNode.new(4),
      ),
      right: TreeNode.new(5,
        left: TreeNode.new(6,
          left: TreeNode.new(7)),
        right: TreeNode.new(8),
      )
    )

    tree = Tree.new
    order = []
    tree.dfs(root) { |value| order.push(value) }

    expect(order).to eq([1, 2, 3, 4, 5, 6, 7, 8])
  end

  it "bfs navigates the tree in order" do
    root = TreeNode.new(1,
      left: TreeNode.new(2,
        left: TreeNode.new(4),
        right: TreeNode.new(5),
      ),
      right: TreeNode.new(3,
        left: TreeNode.new(6,
          left: TreeNode.new(8),
        ),
        right: TreeNode.new(7),
      )
    )

    tree = Tree.new
    order = []
    tree.bfs(root) { |value| order.push(value) }

    expect(order).to eq([1, 2, 3, 4, 5, 6, 7, 8])
  end
end
