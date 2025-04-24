# 3. URLify:
# Write a method to replace all spaces in a string with '%20'.
# You may assume that the string has sufficient space at the end to hold the additional characters,
# and that you are given the "true" length of the string.

def urlify(str)
  # TODO: implement function
end

require 'rspec'

RSpec.describe "urlify" do
  it "replaces spaces in a string with '%20'" do
    expect(urlify('ab c')).to eq('ab%20c')
  end

  it "handles leading and trailing spaces" do
    expect(urlify('  ab c  ')).to eq('%20%20ab%20c%20%20')
  end

  it "returns empty string when input is empty" do
    expect(urlify('')).to eq('')
  end

  it "doesn't modify string without spaces" do
    expect(urlify('abc')).to eq('abc')
  end

  it "handles multiple consecutive spaces" do
    expect(urlify('a  b   c')).to eq('a%20%20b%20%20%20c')
  end

  it "handles special characters" do
    expect(urlify('a b!c')).to eq('a%20b!c')
  end

  it "handles mixed characters as in 'Mr 3ohn Smith'" do
    expect(urlify('Mr 3ohn Smith')).to eq('Mr%203ohn%20Smith')
  end
end
