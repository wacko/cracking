# 1. *Three in One*:
# Describe how you could use a single array to implement three stacks.

class ThreeStacks
  def initialize(array_length)
    @array = Array.new(array_length)
    # TODO: initialize data structures for three stacks
  end

  def push(stack_num, value)
    # TODO: implement push
  end

  def pop(stack_num)
    # TODO: implement pop
  end

  def peek(stack_num)
    # TODO: implement peek
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

  it