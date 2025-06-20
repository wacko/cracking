// 7. *Rotate Matrix*:

// Given an image represented by an NxN matrix, where each pixel in the image is 4
// bytes, write a method to rotate the image by 90 degrees. Can you do this in place?

type Matrix = number[][]

export default function rotateMatrix(matrix: Matrix) {
  const size = matrix.length

  for (let i = 0; i < size-1; i++) {
    for (let j = i+1; j < size; j++) {
      let temp = matrix[i][j]
      matrix[i][j] = matrix[j][i]
      matrix[j][i] = temp
    }
  }

  for (let i = 0; i < size; i++) {
    matrix[i] = matrix[i].reverse()
  }
}

describe('07 - rotateMatrix', () => {
  test('rotates 2x2 matrix clockwise', () => {
    const matrix = [
      [1, 2],
      [3, 4]
    ];
    const expected = [
      [3, 1],
      [4, 2]
    ];
    rotateMatrix(matrix);
    expect(matrix).toEqual(expected);
  });

  test('rotates 3x3 matrix clockwise', () => {
    const matrix = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ];
    const expected = [
      [7, 4, 1],
      [8, 5, 2],
      [9, 6, 3]
    ];
    rotateMatrix(matrix);
    expect(matrix).toEqual(expected);
  });

  test('rotates 4x4 matrix clockwise', () => {
    const matrix = [
      [1, 2, 3, 4],
      [5, 6, 7, 8],
      [9, 10, 11, 12],
      [13, 14, 15, 16]
    ];
    const expected = [
      [13, 9, 5, 1],
      [14, 10, 6, 2],
      [15, 11, 7, 3],
      [16, 12, 8, 4]
    ];
    rotateMatrix(matrix);
    expect(matrix).toEqual(expected);
  });

  test('rotates 5x5 matrix clockwise', () => {
    const matrix = [
      [1, 2, 3, 4, 5],
      [6, 7, 8, 9, 10],
      [11, 12, 13, 14, 15],
      [16, 17, 18, 19, 20],
      [21, 22, 23, 24, 25]
    ];
    const expected = [
      [21, 16, 11, 6, 1],
      [22, 17, 12, 7, 2],
      [23, 18, 13, 8, 3],
      [24, 19, 14, 9, 4],
      [25, 20, 15, 10, 5]
    ];
    rotateMatrix(matrix);
    expect(matrix).toEqual(expected);
  });
});
