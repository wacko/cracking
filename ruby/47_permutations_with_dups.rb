# 7.Permutations without Dups: Write a method to compute all permutations of a string of unique characters.

# permutations_without_dups(input: string): string[]
def permutations_without_dups(input)
  # TODO: implement function
end


# *Permutations with Dups*: Write a method to compute all permutations of a string whose characters are not necessarily unique. The list of permutations should not have duplicates.

# permutations_with_dups(input: string): string[]
def permutations_with_dups(input)
  # TODO: implement function
end


RSpec.describe "permutations_without_dups" do
  it "returns correct permutations for a string of unique characters" do
    # Test case with a string of length 3
    result1 = permutations_without_dups("abc")
    expected_permutations1 = ["abc", "acb", "bac", "bca", "cab", "cba"]
    expect(result1).to match_array(expected_permutations1)
  end
end

RSpec.describe "permutations_with_dups" do
  it "returns correct permutations for a string with duplicate characters" do
    # Test case with a string of length 3 with duplicate characters
    result1 = permutations_with_dups("aab")
    expected_permutations1 = ["aab", "aba", "baa"]
    expect(result1).to match_array(expected_permutations1)

    # Test case with a string of length 4 with duplicate characters
    result2 = permutations_with_dups("aabb")
    expected_permutations2 = [
      "aabb",
      "abab",
      "abba",
      "baab",
      "baba",
      "bbaa",
    ]
    expect(result2).to match_array(expected_permutations2)
  end
end
