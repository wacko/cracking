# 3. *Magic Index*:

# A magic index in an array A[0...n-1] is defined to be an index such that A[i] = i.

# Given a sorted array of distinct integers, write a method to find a magic index, if one exists, in array A.

# FOLLOW UP: What if the values are not distinct?

# find_magic_index_distinct(arr: number[]): number | null {}
def find_magic_index_distinct(arr)
  start = 0
  last = arr.length - 1
  pivot = arr.size / 2

  while start <= last
    return pivot if arr[pivot] == pivot
    if arr[pivot] > pivot
      last = pivot-1
    else
      start = pivot+1
    end
    pivot = (start + last)/2
  end
  return nil
end

# find_magic_index_non_distinct(arr: number[]): number | null {}
def find_magic_index_non_distinct_rec(arr, start, last)
  pivot = (start + last)/2
  return pivot if arr[pivot] == pivot
  return nil if start > last

  find_magic_index_non_distinct_rec(arr, start, [pivot-1, [arr[pivot], 0].max].min) ||
  find_magic_index_non_distinct_rec(arr, [pivot+1, arr[pivot]].max, last)
end

def find_magic_index_non_distinct(arr)
  find_magic_index_non_distinct_rec(arr, 0, arr.length - 1)
end


RSpec.describe "magic index" do
  it "returns correct magic index for distinct input" do
    expect(find_magic_index_distinct([-2, -1, 0, 2, 4, 6, 8])).to eq(4) # Magic index: 4

    expect(find_magic_index_distinct([-3, -2, -1, 4, 5, 7, 9])).to be nil # No magic index
  end

  it "returns correct magic index for non-distinct input" do
    # Test case where magic index exists
    expect(
      find_magic_index_non_distinct([-10, -5, 2, 2, 2, 2, 4, 7, 9, 12, 13]),
    ).to eq(2) # Magic index: 2

    # Test case where no magic index exists
    expect(
      find_magic_index_non_distinct([-10, -5, 0, 2, 5, 7, 9, 12, 13]),
    ).to be nil # No magic index
  end
end
