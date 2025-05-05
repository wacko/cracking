# 3. *Stack of Plates*:

# Imagine a (literal) stack of plates. If the stack gets too high, it might topple.
# Therefore, in real life, we would likely start a new stack when the previous stack
# exceeds some threshold. Implement a data structure SetOfStacks that mimics this.
# SetOfStacks should be composed of several stacks and should create a new stack once
# the previous one exceeds capacity. SetOfStacks.push and SetOfStacks.pop should behave
# identically to a single stack (that is, pop should return the same values as it would if
# there were just a single stack).

# FOLLOW UP: Implement a function popAt(int index) which performs a pop operation on a specific sub-stack.

class StackOfPlates
  def initialize(capacity)
    @capacity = capacity
    @stacks = [[]]
  end

  def push(value)
    last_stack = @stacks.last
    if last_stack.size < @capacity
      last_stack << value
    else
      @stacks << [value]
    end
  end

  def pop
    return nil if @stacks.size == 1 && @stacks.last.empty?

    last_stack = @stacks.last
    if last_stack.empty?
      @stacks.pop
      last_stack = @stacks.last
    end

    last_stack.pop
  end
end

RSpec.describe "StackOfPlates" do
  it "push and pop elements from stack" do
    stack = StackOfPlates.new(3) # Capacity: 3

    stack.push(1)
    stack.push(2)
    stack.push(3)

    expect(stack.pop).to eq(3)
    expect(stack.pop).to eq(2)
    expect(stack.pop).to eq(1)
    expect(stack.pop).to be_nil # Stack is empty

    stack.push(4)
    stack.push(5)
    stack.push(6)

    expect(stack.pop).to eq(6)
    expect(stack.pop).to eq(5)
    expect(stack.pop).to eq(4)
    expect(stack.pop).to be_nil # Stack is empty
  end

  it "push and pop elements from multiple stacks" do
    stack = StackOfPlates.new(2) # Capacity: 2

    stack.push(1)
    stack.push(2)

    stack.push(3) # New stack
    stack.push(4)

    stack.push(5) # New stack

    expect(stack.pop).to eq(5) # Pop from last stack
    expect(stack.pop).to eq(4) # Pop from middle stack
    expect(stack.pop).to eq(3) # Pop from middle stack
    expect(stack.pop).to eq(2) # Pop from first stack
    expect(stack.pop).to eq(1) # Pop from first stack
    expect(stack.pop).to be_nil # Stack is empty
  end

  it "pop from empty stack returns undefined" do
    stack = StackOfPlates.new(2) # Capacity: 2

    expect(stack.pop).to be_nil
  end

  it "push beyond capacity creates new stack" do
    stack = StackOfPlates.new(2) # Capacity: 2

    stack.push(1)
    stack.push(2)

    stack.push(3) # New stack
    stack.push(4)

    expect(stack.pop).to eq(4) # Pop from last stack
    expect(stack.pop).to eq(3) # Pop from last stack
  end
end
