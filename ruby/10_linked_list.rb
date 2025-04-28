# 10. *Implement a Linked List*:
# Create the data structure with the corresponding initial functions:

# Define a simple Node structure.
Node = Struct.new(:value, :next)

class LinkedList
  attr_accessor :head, :tail, :length

  def initialize(head = nil)
    @head = head
    @tail = head
    @length = head ? 1 : 0
  end

  def push(value)
    node = Node.new(value)
    @tail.next = node
    @tail = node
  end

  def filter
    # TODO: implement filter
  end

  def visit
    # TODO: implement visit
  end

  def remove
    # TODO: implement remove
  end

  def merge
    # TODO: implement merge
  end

  def print_list
    # TODO: implement print_list
  end
end

# Example instantiation
list = LinkedList.new