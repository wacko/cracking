# 12. *Return Kth to Last*:
# Implement an algorithm to find the kth to last element of a singly linked list.

def kth_to_last(head, k)
  return nil if k < 1
  curr = head

  k.times do
    if curr
      curr = curr[:next]
    else
      return nil
    end
  end

  while curr
    head = head[:next]
    curr = curr[:next]
  end

  head
end

require 'rspec'

RSpec.describe "kth_to_last" do
  it "returns nil if k is less than 1" do
    node1 = { value: 1, next: nil }
    result = kth_to_last(node1, 0)
    expect(result).to be_nil
  end

  it "returns nil if k is greater than the list's length" do
    node1 = { value: 1, next: nil }
    result = kth_to_last(node1, 2)
    expect(result).to be_nil
  end

  it "returns the kth to last element when k is valid" do
    # Create linked list: 1 -> 2 -> 3 -> 4 -> 5
    node1 = { value: 1 }
    node2 = { value: 2 }
    node3 = { value: 3 }
    node4 = { value: 4 }
    node5 = { value: 5 }
    node1[:next] = node2
    node2[:next] = node3
    node3[:next] = node4
    node4[:next] = node5

    result = kth_to_last(node1, 2)
    expect(result).to eq(node4)
  end

  it "returns the head if k equals the list's length" do
    # Create linked list: 1 -> 2 -> 3 -> 4 -> 5
    node1 = { value: 1 }
    node2 = { value: 2 }
    node3 = { value: 3 }
    node4 = { value: 4 }
    node5 = { value: 5 }
    node1[:next] = node2
    node2[:next] = node3
    node3[:next] = node4
    node4[:next] = node5

    result = kth_to_last(node1, 5)
    expect(result).to eq(node1)
  end
end
