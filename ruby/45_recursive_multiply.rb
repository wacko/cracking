# 5. *Recursive Multiply*: 

# Write a recursive function to multiply two positive integers without using the * operator. You can use addition, subtraction, and bit shifting, but you should minimize the number of those operations.

# recursive_multiply(a: number, b: number): number
def recursive_multiply(a, b)
  # TODO: implement function
end


RSpec.describe "recursive_multiply" do
  it "returns correct product for two positive integers" do
    # Test case with two positive integers
    expect(recursive_multiply(3, 4)).to eq(12) # 3 * 4 = 12
    expect(recursive_multiply(5, 7)).to eq(35) # 5 * 7 = 35
    expect(recursive_multiply(9, 2)).to eq(18) # 9 * 2 = 18

    # Test case with one of the numbers being 0
    expect(recursive_multiply(0, 10)).to eq(0) # 0 * 10 = 0
    expect(recursive_multiply(8, 0)).to eq(0) # 8 * 0 = 0
  end
end
