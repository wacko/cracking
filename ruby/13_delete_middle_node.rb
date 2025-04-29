# 13. *Delete Middle Node*:
# Implement an algorithm to delete a node in the middle (i.e., any node but the first and last)
# of a singly linked list, given only access to that node.
# Example: For a list a -> b -> c -> d -> e -> f, deleting node 'c' results in a -> b -> d -> e -> f.

def delete_middle_node(head, position)
  return head if position < 1
  curr = head

  i = 0
  while curr && position > i
    prev, curr = curr, curr[:next]
    i = i + 1
  end

  return head if curr.nil?

  prev[:next] = curr[:next]
  head
end

require 'rspec'

RSpec.describe "delete_middle_node" do
  it "deletes middle node at position 1" do
    node = { value: 0, next: { value: 1, next: { value: 2, next: { value: 3, next: nil } } } }
    result = delete_middle_node(node, 1)
    expected = { value: 0, next: { value: 2, next: { value: 3, next: nil } } }
    expect(result).to eq(expected)
  end

  it "does nothing if position is out of range" do
    head = { value: 1, next: { value: 2, next: { value: 3, next: nil } } }
    result = delete_middle_node(head, 4)
    expected_value = 1
    curr = result
    while curr
      expect(curr[:value]).to eq(expected_value)
      expected_value += 1
      curr = curr[:next]
    end
  end

  it "does nothing if position is less than 1" do
    head = { value: 1, next: { value: 2, next: { value: 3, next: nil } } }
    result = delete_middle_node(head, 0)
    expected_value = 1
    curr = result
    while curr
      expect(curr[:value]).to eq(expected_value)
      expected_value += 1
      curr = curr[:next]
    end
  end

  it "does nothing if list has only one node" do
    head = { value: 1, next: nil }
    result = delete_middle_node(head, 2)
    expect(result[:value]).to eq(1)
    expect(result[:next]).to be_nil
  end

  it "does nothing if list has only two nodes" do
    head = { value: 1, next: { value: 2, next: nil } }
    result = delete_middle_node(head, 2)
    expect(result[:value]).to eq(1)
    expect(result[:next][:value]).to eq(2)
    expect(result[:next][:next]).to be_nil
  end
end
