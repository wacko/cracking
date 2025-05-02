# 8. *Intersection*:
# Given two (singly) linked lists, determine if the two lists intersect.
# Return the first intersecting node. The intersection is based on reference, not value.

def length(list)
  (1..).each do |i|
    list = list[:next]
    return i if list.nil?
  end
end

def intersection(list1, list2)
  l1 = length(list1)
  l2 = length(list2)

  (l1-l2).abs.times do
    if l1 < l2
      list2 = list2[:next]
    else
      list1 = list1[:next]
    end
  end

  while list1
    return list1 if list1 == list2
    list2 = list2[:next]
    list1 = list1[:next]
  end
  nil
end

require 'rspec'

RSpec.describe "intersection" do
  it "returns nil if the lists do not intersect" do
    # List 1: 1 -> 2 -> 3 -> 4\n    # List 2: 5 -> 6 -> 7 -> 8
    list1 = { value: 1, next: { value: 2, next: { value: 3, next: { value: 4, next: nil } } } }
    list2 = { value: 5, next: { value: 6, next: { value: 7, next: { value: 8, next: nil } } } }
    result = intersection(list1, list2)
    expect(result).to be_nil
  end

  it "returns the intersection node when lists intersect" do
    # Common part: 7 -> 8 -> 9\n    # List 1: 1 -> 2 -> 3 -> 4 -> (common part)\n    # List 2: 5 -> 6 -> (common part)
    common_part = { value: 7, next: { value: 8, next: { value: 9, next: nil } } }
    list1 = { value: 1, next: { value: 2, next: { value: 3, next: { value: 4, next: common_part } } } }
    list2 = { value: 5, next: { value: 6, next: common_part } }
    result = intersection(list1, list2)
    expect(result).to eq(common_part)
  end

  it "returns the intersection node when lists intersect at the head" do
    common_part = { value: 1, next: { value: 2, next: { value: 3, next: nil } } }
    result = intersection(common_part, common_part)
    expect(result).to eq(common_part)
  end

  it "returns the intersection node when lists intersect at the end" do
    # List 1: 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 7\n    # List 2: 0 -> (List1)\n"
    list1 = { value: 1, next: { value: 2, next: { value: 3, next: { value: 4, next: { value: 5, next: { value: 6, next: { value: 7, next: nil } } } } } } }
    list2 = { value: 0, next: list1 }
    result = intersection(list1, list2)
    expect(result).to eq(list1)
  end
end
