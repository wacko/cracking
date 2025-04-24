# 15. *Sum Lists*:
# You have two numbers represented by a linked list, where each node contains a single digit.
# The digits are stored in reverse order, such that the ones digit is at the head.
# Write a function that adds the two numbers and returns the sum as a linked list.
# Example: (7 -> 1 -> 6) + (5 -> 9 -> 2) represents 617 + 295, and the output should be 2 -> 1 -> 9 (912).

def sum_lists(list1, list2)
  # TODO: implement function
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
