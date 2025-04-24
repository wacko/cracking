# 5. *One Away*:
# Given two strings, write a function to check if they are one edit (or zero edits) away.
# An edit is an insertion, removal, or replacement of a character.

def one_away(str1, str2)
  if str1.size < str2.size
    shorter, larger = str1, str2
  else
   shorter, larger = str2, str1
  end

  return false if larger.size > shorter.size + 1

  si, li = 0, 0
  difference = false
  while si < shorter.size && li < larger.size
    if shorter[si] != larger[li]
      return false if difference
      difference = true

      si = si + 1 if shorter.size == larger.size
    else
      si = si + 1
    end
    li = li + 1
  end
  true
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

  it "rejects strings with permutations" do
    expect(one_away("abc", "cba")).to be false
  end
end
