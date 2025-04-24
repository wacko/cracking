# 4. *Palindrome Permutation*:
# Given a string, write a function to check if it is a permutation of a palindrome.

def palindrome_permutation(str)
  # TODO: implement function
end

require 'rspec'

RSpec.describe "palindrome_permutation" do
  it "returns true for empty string" do
    expect(palindrome_permutation("")).to be true
  end

  it "returns true for single character string" do
    expect(palindrome_permutation("a")).to be true
  end

  it "returns true for palindrome with odd length" do
    expect(palindrome_permutation("taco cat")).to be true
  end

  it "returns true for palindrome with even length" do
    expect(palindrome_permutation("rdeder")).to be true
  end

  it "returns false for non-palindrome with odd length" do
    expect(palindrome_permutation("hello")).to be false
  end

  it "returns false for non-palindrome with even length" do
    expect(palindrome_permutation("world")).to be false
  end

  it "handles mixed case" do
    expect(palindrome_permutation("RaceCar")).to be true
  end

  it "handles non-alphanumeric characters" do
    expect(palindrome_permutation("12321")).to be true
  end

  it "returns false when no palindrome permutation exists" do
    expect(palindrome_permutation("abcdefg")).to be false
  end
end
