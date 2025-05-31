# 7.Permutations without Dups: Write a method to compute all permutations of a string of unique characters.

def permutations_without_dups_rec(curr, rest, permutations)
  if rest.size > 1
    rest.each do |c|
      permutations_without_dups_rec(curr + c, rest.reject{|x| x == c}, permutations)
    end
  else
    permutations << curr + rest[0]
  end
end

# permutations_without_dups(input: string): string[]
def permutations_without_dups(input)
  permutations = []
  permutations_without_dups_rec("", input.chars, permutations)
  permutations
end


# *Permutations with Dups*: Write a method to compute all permutations of a string whose characters are not necessarily unique. The list of permutations should not have duplicates.

def permutations_with_dups_rec(curr, rest, permutations)
  if rest.size > 1
    rest.uniq.each do |c|
      pos = rest.find_index(c)
      new_chars = []
      rest.each_with_index{|e,i| new_chars << e if i != pos}
      permutations_with_dups_rec(curr + c, new_chars, permutations)
    end
  else
    permutations << curr + rest[0]
  end
end

# permutations_with_dups(input: string): string[]
def permutations_with_dups(input)
  permutations = []
  permutations_with_dups_rec("", input.chars, permutations)
  permutations
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
