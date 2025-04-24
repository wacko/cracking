# 5. *One Away*:
# Given two strings, write a function to check if they are one edit (or zero edits) away.
# An edit is an insertion, removal, or replacement of a character.

def one_away(str1, str2)
  # TODO: implement function
end

require 'rspec'

RSpec.describe "one_away" do
  it "handles one away replacement" do
    expect(one_away("pale", "bale")).to be true
    expect(one_away("bbaa", "bcca")).to be false
  end

  it "handles insertion" do
    expect(one_away("pale", "ple")).to be true
  end

  it "handles removal" do
    expect(one_away("pale", "pales")).to be true
  end

  it "handles same strings" do
    expect(one_away("abc", "abc")).to be true
  end

  it "returns false when more than one edit away" do
    expect(one_away("abcd", "efgh")).to be false
    expect(one_away("palesa", "pale")).to be false
  end

  it "handles empty strings" do
    expect(one_away("", "")).to be true
  end

  it "handles one character difference" do
    expect(one_away("a", "ab")).to be true
  end

  it "handles empty and non-empty string" do
    expect(one_away("", "a")).to be true
  end
end
