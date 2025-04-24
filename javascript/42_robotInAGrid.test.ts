// 2. *Robot in a Grid*:

// Imagine a robot sitting on the upper left corner of a grid with r rows and c columns.
// The robot can only move in two directions, right and down, but certain cells are
// "off limits" such that the robot cannot step on them.
// Design an algorithm to find a path for the robot from the top left to the bottom right.

type Grid = boolean[][];
type Path = Array<[number, number]>;

export default function robotInAGrid(grid: Grid): [number, number][] | false {
  // TODO: implement function
  return false;
}


describe("robotInAGrid", () => {
  test("returns correct path for a 3x3 grid", () => {
    const grid1: boolean[][] = [
      [true, true, false],
      [true, false, true],
      [true, true, true],
    ];
    expect(robotInAGrid(grid1)).toEqual([
      [0, 0],
      [0, 1],
      [0, 2],
      [1, 2],
      [2, 2],
    ]);
  });

  test("returns correct path for a 4x4 grid", () => {
    const grid2: boolean[][] = [
      [true, true, true, false],
      [true, false, true, true],
      [true, true, false, false],
      [false, true, true, true],
    ];
    expect(robotInAGrid(grid2)).toEqual([
      [0, 0],
      [0, 1],
      [0, 2],
      [1, 2],
      [1, 3],
      [2, 3],
      [3, 3],
    ]);
  });

  test("returns false for no path", () => {
    const grid2: boolean[][] = [
      [true, false, true, false],
      [false, false, true, true],
      [true, true, true, false],
      [true, true, true, true],
    ];
    expect(robotInAGrid(grid2)).toBeFalsy();
  });
});
