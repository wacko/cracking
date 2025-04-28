# 11. *Remove Dups*:
# Write code to remove duplicates from an unsorted linked list.
# FOLLOW UP: How would you solve this problem if a temporary buffer is not allowed?
#
# Example: 1 -> 2 -> 2 -> 2 -> 4

def remove_dups(head)
  return nil if head.nil?

  curr = head
  next_one = head[:next]
  values = Set.new
  values.add(curr[:value])

  while next_one
    if values.include?(next_one[:value])
      curr[:next] = next_one[:next]
    else
      values.add(next_one[:value])
      curr = next_one
    end
    next_one = next_one[:next]
  end
  head
end

require 'rspec'

RSpec.describe "remove_dups" do
  it "removes duplicates on linked list" do
    node1 = { value: "a", next: nil }
    node2 = { value: "a", next: nil }
    node3 = { value: "b", next: nil }
    node1[:next] = node2
    node2[:next] = node3

    expected = { value: "a", next: { value: "b", next: nil } }
    result = remove_dups(node1)
    expect(result).to eq(expected)
  end

  it "handles linked list with no duplicates" do
    node1 = { value: "a", next: nil }
    node2 = { value: "b", next: nil }
    node3 = { value: "c", next: nil }
    node1[:next] = node2
    node2[:next] = node3

    expected = { value: "a", next: { value: "b", next: { value: "c", next: nil } } }
    result = remove_dups(node1)
    expect(result).to eq(expected)
  end

  it "handles multiple duplicates" do
    node1 = { value: "a", next: nil }
    node2 = { value: "a", next: nil }
    node3 = { value: "a", next: nil }
    node1[:next] = node2
    node2[:next] = node3

    expected = { value: "a", next: nil }
    result = remove_dups(node1)
    expect(result).to eq(expected)
  end

  it "returns nil for an empty linked list" do
    expect(remove_dups(nil)).to be_nil
  end

  it "returns the node for a single-node list" do
    node1 = { value: "a", next: nil }
    result = remove_dups(node1)
    expect(result).to eq(node1)
  end
end
