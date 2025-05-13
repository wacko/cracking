class TreeNode
  attr_accessor :value, :left, :right
  def initialize(value, left: nil, right: nil)
    @value = value
    @left = left
    @right = right
  end

  def ==(other)
    @value == other.value &&
    @left == other.left &&
    @right == other.right
  end
end

class ListNode
  attr_accessor :value, :next_node
  def initialize(value, next_node: nil)
    @value = value
    @next_node = next_node
  end

  def ==(other)
    @value == other.value &&
    @next_node == other.next_node
  end
end
