# 6. *String Compression*:
# Implement a method to perform basic string compression using the counts of repeated characters.
# If the compressed string is not smaller than the original, return the original string.

def string_compression(str)
  # TODO: implement function
end

require 'rspec'

RSpec.describe "string_compression" do
  it "compresses string with repeated characters" do
    expect(string_compression('aabcccccaaa')).to eq('a2b1c5a3')
  end

  it "returns original string if compressed string is not shorter" do
    expect(string_compression('abcde')).to eq('abcde')
  end

  it "returns empty string for empty input" do
    expect(string_compression('')).to eq('')
  end

  it "returns the input for single character string" do
    expect(string_compression('a')).to eq('a')
  end

  it "compresses string with uppercase and lowercase letters" do
    expect(string_compression('AAAbbbCCCddd')).to eq('A3b3C3d3')
  end

  it "returns original string if there are no repeated characters" do
    expect(string_compression('abcdef')).to eq('abcdef')
  end
end
