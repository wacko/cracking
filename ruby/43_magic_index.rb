# 3. *Magic Index*:

# A magic index in an array A[0...n-1] is defined to be an index such that A[i] = i.

# Given a sorted array of distinct integers, write a method to find a magic index, if one exists, in array A.

# FOLLOW UP: What if the values are not distinct?

# find_magic_index_distinct(arr: number[]): number | null {}
def find_magic_index_distinct(arr)
  # TODO: implement function
end

# find_magic_index_non_distinct(arr: number[]): number | null {}
def find_magic_index_non_distinct(arr)
  # TODO: implement function
end


RSpec.describe "magic index" do
  it "returns correct magic index for distinct input" do
    expect(find_magic_index_distinct([-2, -1, 0, 2, 4, 6, 8])).to eq(4) # Magic index: 4

    expect(find_magic_index_distinct([-3, -2, -1, 4, 5, 7, 9])).to be false # No magic index
  end
end

RSpec.describe "not distinct" do
  it "returns correct magic index for non-distinct input" do
    # Test case where magic index exists
    expect(
      find_magic_index_non_distinct([-10, -5, 2, 2, 2, 2, 4, 7, 9, 12, 13]),
    ).to eq(2) # Magic index: 2

    # Test case where no magic index exists
    expect(
      find_magic_index_non_distinct([-10, -5, 0, 2, 5, 7, 9, 12, 13]),
    ).to be false # No magic index
  end
end
