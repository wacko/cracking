# 15. *Sum Lists*:
# You have two numbers represented by a linked list, where each node contains a single digit.
# The digits are stored in reverse order, such that the ones digit is at the head.
# Write a function that adds the two numbers and returns the sum as a linked list.
# Example: (7 -> 1 -> 6) + (5 -> 9 -> 2) represents 617 + 295, and the output should be 2 -> 1 -> 9 (912).

# iterative algorithm
def sum_lists_iterative(list1, list2)
  carry = 0
  output = { value: 0, next: nil }
  current = output
  while list1 || list2
    a = list1 && list1[:value] || 0
    b = list2 && list2[:value] || 0
    carry, current[:value] = (a + b + carry).divmod(10)
    list1 = list1[:next] if list1
    list2 = list2[:next] if list2
    if list1 || list2
      current[:next] = { value: 0, next: nil }
      current = current[:next]
    end
  end
  current[:next] = { value: 1, next: nil } if carry == 1
  output
end

# recursive algorithm
def sum_lists_recursive(list1, list2, carry=0)
  a, b = 0, 0
  if list1
    a = list1[:value]
    list1 = list1[:next]
  end
  if list2
    b = list2[:value]
    list2 = list2[:next]
  end

  sum = a + b + carry
  carry, value = sum.divmod(10)
 
  if list1 || list2
    { value: value, next: sum_lists_recursive(list1, list2, carry) }
  else
    carry_node = carry.zero? ? nil : { value: carry, next: nil }
    { value: value, next: carry_node }
  end
end

def sum_lists(list1, list2)
  # sum_lists_iterative(list1, list2)
  sum_lists_recursive(list1, list2)
end

require 'rspec'

RSpec.describe "sum_lists" do
  it "sums two non-empty lists without carryover" do
    list1 = { value: 1, next: { value: 2, next: { value: 3, next: nil } } }  # represents 321\n    list2 = { value: 4, next: { value: 5, next: { value: 6, next: nil } } }  # represents 654\n    expected_result = { value: 5, next: { value: 7, next: { value: 9, next: nil } } }  # 975\n"
    list1 = { value: 1, next: { value: 2, next: { value: 3, next: nil } } }
    list2 = { value: 4, next: { value: 5, next: { value: 6, next: nil } } }
    expected_result = { value: 5, next: { value: 7, next: { value: 9, next: nil } } }
    result = sum_lists(list1, list2)
    expect(result).to eq(expected_result)
  end

  it "sums two non-empty lists with carryover" do
    list1 = { value: 9, next: { value: 9, next: { value: 9, next: nil } } }
    list2 = { value: 1, next: nil }
    expected_result = { value: 0, next: { value: 0, next: { value: 0, next: { value: 1, next: nil } } } }
    result = sum_lists(list1, list2)
    expect(result).to eq(expected_result)
  end

  it "sums two lists with different lengths" do
    list1 = { value: 1, next: { value: 2, next: { value: 3, next: { value: 4, next: nil } } } }  # represents 4321\n    list2 = { value: 5, next: { value: 6, next: nil } }  # represents 65 reversed\n    expected_result = { value: 6, next: { value: 8, next: { value: 3, next: { value: 4, next: nil } } } }  # represents 4386 reversed\n"
    list1 = { value: 1, next: { value: 2, next: { value: 3, next: { value: 4, next: nil } } } }
    list2 = { value: 5, next: { value: 6, next: nil } }
    expected_result = { value: 6, next: { value: 8, next: { value: 3, next: { value: 4, next: nil } } } }
    result = sum_lists(list1, list2)
    expect(result).to eq(expected_result)
  end
end
