class TreeNode
  attr_accessor :value, :left, :right
  def initialize(value, left: nil, right: nil)
    @value = value
    @left = left
    @right = right
  end
end

class ListNode
  attr_accessor :value, :next_node
  def initialize(value, next_node: nil)
    @value = value
    @next_node = next_node
  end
end
