# 8. *Zero Matrix*:
# Write an algorithm such that if an element in an MxN matrix is 0, its entire row and column are set to 0.

def zero_matrix(matrix)
  # TODO: implement function
end

require 'rspec'

RSpec.describe "zero_matrix" do
  it "zeroes 2x2 matrix" do
    matrix = [
      [0, 2],
      [3, 4],
    ]
    expected = [
      [0, 0],
      [0, 4],
    ]
    zero_matrix(matrix)
    expect(matrix).to eq(expected)
  end

  it "zeroes 3x3 matrix" do
    matrix = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 0, 9],
    ]
    expected = [
      [1, 0, 3],
      [4, 0, 6],
      [0, 0, 0],
    ]
    zero_matrix(matrix)
    expect(matrix).to eq(expected)
  end

  it "zeroes 4x4 matrix" do
    matrix = [
      [1, 2, 3, 4],
      [5, 6, 0, 8],
      [9, 10, 11, 12],
      [13, 14, 15, 16],
    ]
    expected = [
      [1, 2, 0, 4],
      [0, 0, 0, 0],
      [9, 10, 0, 12],
      [13, 14, 0, 16],
    ]
    zero_matrix(matrix)
    expect(matrix).to eq(expected)
  end

  it "handles 2 zeroes in a 4x4 matrix" do
    matrix = [
      [0, 2, 3, 4],
      [5, 6, 0, 8],
      [9, 10, 11, 12],
      [13, 14, 15, 16],
    ]
    expected = [
      [0, 0, 0, 0],
      [0, 0, 0, 0],
      [0, 10, 0, 12],
      [0, 14, 0, 16],
    ]
    zero_matrix(matrix)
    expect(matrix).to eq(expected)
  end
end