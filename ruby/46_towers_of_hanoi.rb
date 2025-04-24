# 6. *Towers of Hanoi*:

# In the classic problem of the Towers of Hanoi, you have 3 towers and
# N disks of different sizes which can slide onto any tower.
# The puzzle starts with disks sorted in ascending order of size from top to bottom
# (i.e., each disk sits on top of an even larger one).
#
# You have the following constraints:
# Only one disk can be moved at a time.
# A disk is slid off the top of one tower onto another tower.
# A disk cannot be placed on top of a smaller disk.
# Write a program to move the disks from the first tower to the last using stacks.

# type Tower = number[]

# towers_of_hanoi(n: number): [Tower, Tower, Tower]
def towers_of_hanoi(n)
  # TODO: implement function
end


RSpec.describe "towers_of_hanoi" do
  it "returns correct tower configuration after moving disks" do
    result1 = towers_of_hanoi(3)
    expect(result1).to eq([[], [], [3,2,1]])

    result2 = towers_of_hanoi(4)
    expect(result2).to eq([[], [], [4, 3, 2, 1]])

    result3 = towers_of_hanoi(5)
    expect(result3).to eq([ [], [], [5, 4, 3, 2, 1]])
  end
end
