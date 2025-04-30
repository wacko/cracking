# 14. *Partition*:
# Write code to partition a linked list around a value x, such that all nodes less than x come before all nodes
# greater than or equal to x. The element x can appear anywhere in the right partition.
# Example:\n#  Input: 3 -> 5 -> 8 -> 5 -> 10 -> 2 -> 1 (x = 5)\n#  Output: 3 -> 2 -> 1 -> 5 -> 8 -> 5 -> 10

def partition(head, x)
  head_left = { next: nil }
  head_right = { next: nil }

  left = head_left
  right = head_right

  while head
    if head[:value] < x
      left[:next] = head
      left = left[:next]
    else
      right[:next] = head
      right = right[:next]
    end
    head = head[:next]
  end

  left[:next] = head_right[:next]
  right[:next] = nil

  head_left[:next]
end

require 'rspec'

RSpec.describe "partition" do
  it "partitions the list correctly" do
    node1 = { value: 3 }
    node2 = { value: 5 }
    node3 = { value: 8 }
    node4 = { value: 5 }
    node5 = { value: 10 }
    node6 = { value: 2 }
    node7 = { value: 1 }
    node1[:next] = node2
    node2[:next] = node3
    node3[:next] = node4
    node4[:next] = node5
    node5[:next] = node6
    node6[:next] = node7

    # Expected partitioned list: 3 -> 2 -> 1 -> 5 -> 8 -> 5 -> 10
    result = partition(node1, 5)

    values = []
    begin
      values << result[:value]
    end while result = result[:next]

    expect(values[0..2]).to match_array([1,2,3])
    expect(values[3..6]).to match_array([5,5,8,10])
  end

  it "handles single node list correctly" do
    node1 = { value: 5, next: nil }
    result = partition(node1, 5)
    expect(result[:value]).to eq(5)
    expect(result[:next]).to be_nil
  end

  it "handles list where all nodes are less than x" do
    node1 = { value: 3 }
    node2 = { value: 2 }
    node3 = { value: 1 }
    node4 = { value: 4 }
    node5 = { value: 5 }
    node1[:next] = node2
    node2[:next] = node3
    node3[:next] = node4
    node4[:next] = node5

    result = partition(node1, 6)
    expect(result[:value]).to eq(3)
    expect(result[:next][:value]).to eq(2)
    expect(result[:next][:next][:value]).to eq(1)
    expect(result[:next][:next][:next][:value]).to eq(4)
    expect(result[:next][:next][:next][:next][:value]).to eq(5)
  end

  it "handles list where all nodes are greater than or equal to x" do
    node1 = { value: 3 }
    node2 = { value: 2 }
    node3 = { value: 1 }
    node4 = { value: 4 }
    node5 = { value: 5 }
    node1[:next] = node2
    node2[:next] = node3
    node3[:next] = node4
    node4[:next] = node5

    result = partition(node1, 0)
    expect(result[:value]).to eq(3)
    expect(result[:next][:value]).to eq(2)
    expect(result[:next][:next][:value]).to eq(1)
    expect(result[:next][:next][:next][:value]).to eq(4)
    expect(result[:next][:next][:next][:next][:value]).to eq(5)
  end
end
