// 8. *Zero Matrix*:

// Write an algorithm such that if an element in an MxN matrix is 0, its entire row and column are set to 0.

type Matrix = number[][]

export default function zeroMatrix (matrix: Matrix) {
  // TODO: implement function
}

describe("08 - zeroMatrix", () => {
  test("zeroes 2x2 matrix", () => {
    const matrix = [
      [0, 2],
      [3, 4],
    ];
    const expected = [
      [0, 0],
      [0, 4],
    ];
    zeroMatrix(matrix);
    expect(matrix).toEqual(expected);
  });

  test("zeroes 3x3 matrix", () => {
    const matrix = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 0, 9],
    ];
    const expected = [
      [1, 0, 3],
      [4, 0, 6],
      [0, 0, 0],
    ];
    zeroMatrix(matrix);
    expect(matrix).toEqual(expected);
  });

  test("zeroes 4x4 matrix", () => {
    const matrix = [
      [1, 2, 3, 4],
      [5, 6, 0, 8],
      [9, 10, 11, 12],
      [13, 14, 15, 16],
    ];
    const expected = [
      [1, 2, 0, 4],
      [0, 0, 0, 0],
      [9, 10, 0, 12],
      [13, 14, 0, 16],
    ];
    zeroMatrix(matrix);
    expect(matrix).toEqual(expected);
  });

  test("2 zeroes 4x4 matrix", () => {
    const matrix = [
      [0, 2, 3, 4],
      [5, 6, 0, 8],
      [9, 10, 11, 12],
      [13, 14, 15, 16],
    ];
    const expected = [
      [0, 0, 0, 0],
      [0, 0, 0, 0],
      [0, 10, 0, 12],
      [0, 14, 0, 16],
    ];
    zeroMatrix(matrix);
    expect(matrix).toEqual(expected);
  });
});
