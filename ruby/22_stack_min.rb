# 2. *Stack Min*: How would you design a stack which,
# in addition to push and pop,
# has a function min which returns the minimum element?
# Push, pop, and min should all operate in O(1) time.
#

class StackMin
  def push(value)
    # TODO: implement function
  end

  def pop
    # TODO: implement function
  end

  def min
    # TODO: implement function
  end
end

require 'rspec'

RSpec.describe "StackMin" do
  it "push and pop elements from stack" do
    stack = StackMin.new

    stack.push(5)
    stack.push(2)
    stack.push(8)
    stack.push(1)

    expect(stack.min).to eq(1) # Minimum element is 1

    expect(stack.pop).to eq(1)
    expect(stack.min).to eq(2) # Minimum element is 2

    expect(stack.pop).to eq(8)
    expect(stack.min).to eq(2) # Minimum element is 2

    expect(stack.pop).to eq(2)
    expect(stack.min).to eq(5) # Minimum element is 5

    expect(stack.pop).to eq(5)
    expect(stack.min).to be_nil # Stack is empty
  end

  it "min method returns nil when stack is empty" do
    stack = StackMin.new

    expect(stack.min).to be_nil
  end

  it "push and pop mixed with min operations" do
    stack = StackMin.new

    stack.push(3)
    expect(stack.min).to eq(3)

    stack.push(5)
    expect(stack.min).to eq(3)

    stack.push(2)
    expect(stack.min).to eq(2)

    stack.push(1)
    expect(stack.min).to eq(1)

    expect(stack.pop).to eq(1)
    expect(stack.min).to eq(2)

    expect(stack.pop).to eq(2)
    expect(stack.min).to eq(3)

    stack.push(0)
    expect(stack.min).to eq(0)

    expect(stack.pop).to eq(0)
    expect(stack.min).to eq(3)

    expect(stack.pop).to eq(5)
    expect(stack.min).to eq(3)

    expect(stack.pop).to eq(3)
    expect(stack.min).to be_nil
  end
end
