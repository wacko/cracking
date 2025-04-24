# 2. *Check Permutation*:
# Given two strings, write a method to decide if one is a permutation of the other.

def check_permutations(s1, s2)
  # Naive solution:
  # s1.chars.sort == s2.chars.sort

  chars1 = s1.chars.inject({}) do |memo, c|
    count = memo[c] || 0
    memo[c] = count + 1
    memo
  end
  chars2 = s2.chars.inject({}) do |memo, c|
    count = memo[c] || 0
    memo[c] = count + 1
    memo
  end
  chars1 == chars2
end

require 'rspec'

RSpec.describe "check_permutations" do
  it "returns true for permutations with same length strings" do
    expect(check_permutations("abc", "cba")).to be true
  end

  it "returns false for strings with different lengths" do
    expect(check_permutations("abc", "cbad")).to be false
  end

  it "returns true for permutations with special characters" do
    expect(check_permutations("abc!", "!bac")).to be true
  end

  it "returns false for non-permutations with special characters" do
    expect(check_permutations("abc!", "!bcd")).to be false
  end

  it "returns true for empty strings" do
    expect(check_permutations("", "")).to be true
  end

  it "returns true for long strings with same characters" do
    expect(check_permutations("a" * 1000, "a" * 1000)).to be true
  end

  it "returns false for long strings with different characters" do
    expect(check_permutations("a" * 1000, "b" * 1000)).to be false
  end
end
