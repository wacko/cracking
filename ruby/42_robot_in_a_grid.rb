# 2. *Robot in a Grid*:

# Imagine a robot sitting on the upper left corner of a grid with r rows and c columns.
# The robot can only move in two directions, right and down, but certain cells are
# "off limits" such that the robot cannot step on them.
# Design an algorithm to find a path for the robot from the top left to the bottom right.

# type Grid = boolean[][]
# type Path = Array<[number, number]>

# def robot_in_a_grid(grid: Grid, col:number, row:number) => [number, number][] | false
def robot_in_a_grid(grid, col=0, row=0)
  return false if grid[col][row] == false
  rows = grid.size
  cols = grid[0].size
  return [[col,row]] if col == cols-1 && row == rows-1 && grid[col][row] == true

  if col < cols-1
    if path = robot_in_a_grid(grid, col+1, row)
      path.unshift([row, col])
      return path
    end
  end

  if row < rows-1
    if path = robot_in_a_grid(grid, col, row+1)
      path.unshift([row, col])
      return path
    end
  end

  return false
end


RSpec.describe "robot_in_a_grid" do
  it "returns correct path for a 3x3 grid" do
    grid1 = [
      [true, true, false],
      [true, false, true],
      [true, true, true],
    ]
    expect(robot_in_a_grid(grid1)).to eq([
      [0, 0],
      [0, 1],
      [0, 2],
      [1, 2],
      [2, 2],
    ])
  end

  it "returns correct path for a 4x4 grid" do
    grid2 = [
      [true, true, true, false],
      [true, false, true, true],
      [true, true, false, false],
      [false, true, true, true],
    ]
    expect(robot_in_a_grid(grid2)).to eq([
      [0, 0],
      [0, 1],
      [0, 2],
      [1, 2],
      [1, 3],
      [2, 3],
      [3, 3],
    ])
  end

  it "returns false for no path" do
    grid2 = [
      [true, false, true, false],
      [false, false, true, true],
      [true, true, true, false],
      [true, true, true, true],
    ]
    expect(robot_in_a_grid(grid2)).to be false
  end
end
