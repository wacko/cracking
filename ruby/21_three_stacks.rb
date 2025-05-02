# 1. *Three in One*:
# Describe how you could use a single array to implement three stacks.

class ThreeStacks
  def initialize(array_length)
    @array = Array.new(array_length)
    @sizes = [0, 0, 0]
  end

  def push(stack_num, value)
    offset = @sizes[stack_num] + stack_num
    @array[offset] = value
    @sizes[stack_num] = @sizes[stack_num] + 1
  end

  def pop(stack_num)
    return nil if @sizes[stack_num] == 0
    offset = @sizes[stack_num] + stack_num - 1
    elem = @array[offset]
    @sizes[stack_num] = @sizes[stack_num] - 1
    elem
  end

  def peek(stack_num)
    return nil if @sizes[stack_num] == 0
    offset = @sizes[stack_num] + stack_num - 1
    @array[offset]
  end
end

require 'rspec'

RSpec.describe ThreeStacks do
  it "push and pop elements from stack 1" do
    three_stacks = ThreeStacks.new(9)  # Array length: 9
    three_stacks.push(0, 1)
    three_stacks.push(0, 2)
    three_stacks.push(0, 3)
    expect(three_stacks.pop(0)).to eq(3)
    expect(three_stacks.pop(0)).to eq(2)
    expect(three_stacks.pop(0)).to eq(1)
    expect(three_stacks.pop(0)).to be_nil
  end

  it "push and pop elements from stack 2" do
    three_stacks = ThreeStacks.new(9)
    three_stacks.push(1, 4)
    three_stacks.push(1, 5)
    three_stacks.push(1, 6)
    expect(three_stacks.pop(1)).to eq(6)
    expect(three_stacks.pop(1)).to eq(5)
    expect(three_stacks.pop(1)).to eq(4)
    expect(three_stacks.pop(1)).to be_nil
  end

  it "push and pop elements from stack 3" do
    three_stacks = ThreeStacks.new(9) # Array length: 9

    three_stacks.push(2, 7)
    three_stacks.push(2, 8)
    three_stacks.push(2, 9)
    expect(three_stacks.pop(2)).to eq(9)
    expect(three_stacks.pop(2)).to eq(8)
    expect(three_stacks.pop(2)).to eq(7)
    expect(three_stacks.pop(2)).to be_nil # Stack should be empty now
  end

  it "pop elements from empty stack" do
    three_stacks = ThreeStacks.new(3) # Array length: 3

    # Attempt to pop from empty stacks should return undefined
    expect(three_stacks.pop(0)).to be_nil
    expect(three_stacks.pop(1)).to be_nil
    expect(three_stacks.pop(2)).to be_nil
  end

  it "peek elements from stacks" do
    three_stacks = ThreeStacks.new(3) # Array length: 9

    three_stacks.push(0, 1)
    three_stacks.push(1, 2)
    three_stacks.push(2, 3)

    expect(three_stacks.peek(0)).to eq(1)
    expect(three_stacks.peek(1)).to eq(2)
    expect(three_stacks.peek(2)).to eq(3)
  end

  it "peek elements from empty stack" do
    three_stacks = ThreeStacks.new(3) # Array length: 3

    # Attempt to peek from empty stacks should return undefined
    expect(three_stacks.peek(0)).to be_nil
    expect(three_stacks.peek(1)).to be_nil
    expect(three_stacks.peek(2)).to be_nil
  end
end
