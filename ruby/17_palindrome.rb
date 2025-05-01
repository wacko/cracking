# 7. *Palindrome*:
# Implement a function to check if a linked list is a palindrome.

def reverse(head, &blk)
  reverse(head[:next], &blk) if head[:next]
  yield head[:value]
end

def is_palindrome(head)
  reverse(head) do |v|
    return false if head[:value] != v
    head = head[:next]
  end
  true
end

require 'rspec'

RSpec.describe "is_palindrome" do
  it "returns true for a single node list" do
    node = { value: 1, next: nil }
    result = is_palindrome(node)
    expect(result).to be true
  end

  it "returns true for a palindrome list with odd number of nodes" do
    # 1 -> 2 -> 3 -> 2 -> 1
    node1 = { value: 1 }
    node2 = { value: 2 }
    node3 = { value: 3 }
    node4 = { value: 2 }
    node5 = { value: 1 }
    node1[:next] = node2
    node2[:next] = node3
    node3[:next] = node4
    node4[:next] = node5
    result = is_palindrome(node1)
    expect(result).to be true
  end

  it "returns false for a non-palindrome list" do
    # 1 -> 2 -> 3 -> 4 -> 5
    node1 = { value: 1 }
    node2 = { value: 2 }
    node3 = { value: 3 }
    node4 = { value: 4 }
    node5 = { value: 5 }
    node1[:next] = node2
    node2[:next] = node3
    node3[:next] = node4
    node4[:next] = node5
    result = is_palindrome(node1)
    expect(result).to be false
  end

  it "returns true for a palindrome list with even number of nodes" do
    # 1 -> 2 -> 2 -> 1
    node1 = { value: 1 }
    node2 = { value: 2 }
    node3 = { value: 2 }
    node4 = { value: 1 }
    node1[:next] = node2
    node2[:next] = node3
    node3[:next] = node4
    result = is_palindrome(node1)
    expect(result).to be true
  end
end
