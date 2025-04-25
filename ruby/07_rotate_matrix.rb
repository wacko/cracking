# 7. *Rotate Matrix*:
# Given an image represented by an NxN matrix, write a method to rotate the image by 90 degrees in place.

def rotate_matrix(matrix)
  size = matrix.size
  rows = size.ceildiv(2) - 1
  cols = size.div(2) - 1
  offset = matrix.size - 1

  0.upto(rows) do |i|
    0.upto(cols) do |j|
      temp = matrix[i][j]
      matrix[i][j] = matrix[offset-j][i]
      matrix[offset-j][i] = matrix[offset-i][offset-j]
      matrix[offset-i][offset-j] = matrix[j][offset-i]
      matrix[j][offset-i] = temp
    end
  end
end

require 'rspec'

RSpec.describe "rotate_matrix" do
  it "rotates a 2x2 matrix clockwise" do
    matrix = [[1, 2], [3, 4]]
    expected = [[3, 1], [4, 2]]
    rotate_matrix(matrix)
    expect(matrix).to eq(expected)
  end

  it "rotates a 3x3 matrix clockwise" do
    matrix = [[1,2,3], [4,5,6], [7,8,9]]
    expected = [[7,4,1], [8,5,2], [9,6,3]]
    rotate_matrix(matrix)
    expect(matrix).to eq(expected)
  end

  it "rotates a 4x4 matrix clockwise" do
    matrix = [
      [1,2,3,4],
      [5,6,7,8],
      [9,10,11,12],
      [13,14,15,16]
    ]
    expected = [
      [13,9,5,1],
      [14,10,6,2],
      [15,11,7,3],
      [16,12,8,4]
    ]
    rotate_matrix(matrix)
    expect(matrix).to eq(expected)
  end

  it "rotates a 5x5 matrix clockwise" do
    matrix = [
      [1,2,3,4,5],
      [6,7,8,9,10],
      [11,12,13,14,15],
      [16,17,18,19,20],
      [21,22,23,24,25]
    ]
    expected = [
      [21,16,11,6,1],
      [22,17,12,7,2],
      [23,18,13,8,3],
      [24,19,14,9,4],
      [25,20,15,10,5]
    ]
    rotate_matrix(matrix)
    expect(matrix).to eq(expected)
  end
end
