# 9. *Loop Detection*:
# Given a circular linked list, implement an algorithm that returns the node
# at the beginning of the loop.
#
# Definition: A circular linked list is a linked list in which a node's next pointer
# points to an earlier node, forming a loop.
#
# Example: Input: A -> 8 -> C -> D -> E -> C (the same C earlier)  Output: C

def detect_loop(head)
  # TODO: implement function
end

require 'rspec'

RSpec.describe "detect_loop" do
  it "returns nil if the list has only one node" do
    node = { value: 1, next: nil }
    result = detect_loop(node)
    expect(result).to be_nil
  end

  it "returns nil if the list does not have a loop" do
    list = { value: 1, next: { value: 2, next: { value: 3, next: { value: 4, next: { value: 5, next: nil } } } } }
    result = detect_loop(list)
    expect(result).to be_nil
  end

  it "returns the node at the beginning of the loop" do
    # List with a loop: 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 7 -> 8 -> 9 -> 31 -> 32 -> 31
    loop_node = { value: 31, next: { value: 32, next: nil } }
    loop_node[:next][:next] = loop_node
    list = { value: 1, next: { value: 2, next: { value: 3, next: { value: 4, next: { value: 5, next: { value: 6, next: { value: 7, next: { value: 8, next: { value: 9, next: loop_node } } } } } } } } }
    result = detect_loop(list)
    expect(result).to eq(loop_node)
  end

  it "returns the node at the beginning of the loop (longer loop)" do
    # List with a loop: 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 7 -> 8 -> 9 -> 10 -> 11 -> 12 -> 13 -> 11
    loop_node = { value: 11, next: { value: 12, next: { value: 13, next: nil } } }
    loop_node[:next][:next][:next] = loop_node
    list = { value: 1, next: { value: 2, next: { value: 3, next: { value: 4, next: { value: 5, next: