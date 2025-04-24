# 9. *String Rotation*:
# Assume you have a method is_substring? which checks if one word is a substring of another.
# Given two strings, s1 and s2, write code to check if s2 is a rotation of s1 using only one call to is_substring?.
# Example: "waterbottle" is a rotation of "erbottlewat".

def string_rotation(s1, s2)
  # TODO: implement function
end

require 'rspec'

RSpec.describe "string_rotation" do
  it "rotates a string" do
    str1 = "Hello"
    str2 = "oHell"
    result = string_rotation(str1, str2)
    expect(result).to be true
  end

  it "rotates another string" do
    str1 = "waterbottle"
    str2 = "erbottlewat"
    result = string_rotation(str1, str2)
    expect(result).to be true
  end
end