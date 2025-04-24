# 4. *Power Set*: 

# Write a method to return all subsets of a set.

# Example 
# Input: [1, 2, 3]
# Output: [ [], [1], [1, 2], [1, 2, 3], [1, 3], [2], [2, 3], [3] ]


# power_set(set: number[]): number[][]
def power_set(set)
  # TODO: implement function
end

def sorted(power_set)
  power_set.map(&:sort).sort
end

RSpec.describe "power_set" do
  it "returns correct power set for a given set" do
    set1 = [1, 2, 3]
    expectedpower_set1 = [
      [],
      [1],
      [1, 2],
      [1, 2, 3],
      [1, 3],
      [2],
      [2, 3],
      [3],
    ]
    expect(sorted(power_set(set1))).to eq(sorted(expectedpower_set1))

    set2 = []
    expectedpower_set2 = [[]]
    expect(sorted(power_set(set2))).to eq(sorted(expectedpower_set2))
  end

  it "returns correct power set for 4" do
    set1 = [1, 2, 3, 4]
    expectedpower_set1 = [
      [1],
      [1, 4],
      [1, 3, 4],
      [1, 3],
      [1, 2, 3],
      [1, 2, 3, 4],
      [1, 2, 4],
      [1, 2],
      [2],
      [2, 4],
      [2, 3, 4],
      [2, 3],
      [3],
      [3, 4],
      [4],
      [],
    ]
    expect(sorted(power_set(set1))).to eq(sorted(expectedpower_set1))
  end
end
