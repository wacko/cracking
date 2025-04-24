# 1. *Is Unique*:
# Implement an algorithm to determine if a string has all unique characters.
# What if you cannot use additional data structures?


# is_unique(string) => boolean
def is_unique(str)
  # TODO: implement function
end

require 'rspec'

RSpec.describe "is_unique" do
  it "returns true for unique characters" do
    expect(is_unique("abc")).to be true
    expect(is_unique("abcdefg")).to be true
    expect(is_unique("123456")).to be true
    expect(is_unique("!@#$%^")).to be true
  end

  it "returns false for non-unique characters" do
    expect(is_unique("aab")).to be false
    expect(is_unique("hello")).to be false
    expect(is_unique("testing")).to be false
    expect(is_unique("1234456")).to be false
    expect(is_unique("abccdef")).to be false
  end

  it "returns true for empty string" do
    expect(is_unique("")).to be true
  end

  it "handles whitespace correctly" do
    expect(is_unique("a b c")).to be false
    expect(is_unique("ab c")).to be true
  end

  it "handles special characters correctly" do
    expect(is_unique("!@#$%^&*")).to be true
    expect(is_unique("!@#$%^&*!")).to be false
  end

  it "handles mixed case correctly" do
    expect(is_unique("aA")).to be true
    expect(is_unique("Aa")).to be true
    expect(is_unique("Hello")).to be false
  end
end