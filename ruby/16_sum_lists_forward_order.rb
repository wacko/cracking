# 6. Suppose the digits are stored in forward order. Repeat the above problem.
# Example:
# Input: (6 -> 1 -> 7) + (2 -> 9 -> 5) i.e., 617 + 295
# Output: 9 -> 1 -> 2, i.e., 912.

def length(list)
  i = 0
  while list
    i = i + 1
    list = list[:next]
  end
  i
end

def pad(list, count)
  count.times do
    list = { value: 0, next: list }
  end
  list
end

def recurse(list1, list2)
  carry = 0
  node = nil
  if list1[:next]
    node, carry = recurse(list1[:next], list2[:next])
  end
  
  sum = list1[:value] + list2[:value] + carry
  carry, value = sum.divmod(10)
  
  [{ value: value, next: node }, carry]
end

def sum_lists_forward_order(list1, list2)
  return nil if list1.nil? && list2.nil?

  l1 = length(list1)
  l2 = length(list2)

  if l1 < l2
    list1 = pad(list1, l2 - l1)
  else
    list2 = pad(list2, l1 - l2)
  end

  node, carry = recurse(list1, list2)
  carry == 1 ? { value: 1, next: node } : node
end

require 'rspec'

RSpec.describe "sum_lists_forward_order" do
  it "sums two non-empty lists without carryover" do
    # 123 + 456 = 579
    list1 = { value: 1, next: { value: 2, next: { value: 3, next: nil } } }
    list2 = { value: 4, next: { value: 5, next: { value: 6, next: nil } } }
    expected_result = { value: 5, next: { value: 7, next: { value: 9, next: nil } } }
    result = sum_lists_forward_order(list1, list2)
    expect(result).to eq(expected_result)
  end

  it "sums two non-empty lists with carryover" do
    # 999 + 1 = 1000
    list1 = { value: 9, next: { value: 9, next: { value: 9, next: nil } } }
    list2 = { value: 1, next: nil }
    expected_result = { value: 1, next: { value: 0, next: { value: 0, next: { value: 0, next: nil } } } }
    result = sum_lists_forward_order(list1, list2)
    expect(result).to eq(expected_result)
  end

  it "sums two lists with different lengths" do
    # 1234 + 56 = 1290
    list1 = { value: 1, next: { value: 2, next: { value: 3, next: { value: 4, next: nil } } } }
    list2 = { value: 5, next: { value: 6, next: nil } }
    expected_result = { value: 1, next: { value: 2, next: { value: 9, next: { value: 0, next: nil } } } }
    result = sum_lists_forward_order(list1, list2)
    expect(result).to eq(expected_result)
  end

  it "sums two empty lists" do
    result = sum_lists_forward_order(nil, nil)
    expect(result).to be_nil
  end

  it "sums one empty list and one non-empty list" do
    # 123 + 0 = 123
    list1 = { value: 1, next: { value: 2, next: { value: 3, next: nil } } }
    result = sum_lists_forward_order(list1, nil)
    expect(result).to eq(list1)
  end
end
