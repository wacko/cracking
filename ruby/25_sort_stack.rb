# 5. *Sort Stack*:

# Write a program to sort a stack such that the smallest items are on the top.
# You can use an additional temporary stack, but you may not copy the elements
# into any other data structure (such as an array).
# The stack supports the following operations: push, pop, peek, and empty?.

class SortStack
  def push(value)
    # TODO: implement function
  end

  def pop
    # TODO: implement function
  end

  def peek
    # TODO: implement function
  end

  def empty?
    # TODO: implement function
  end
end

RSpec.describe "SortStack" do
  it "push elements in sorted order" do
    stack = SortStack.new

    stack.push(3)
    expect(stack.peek).to eq(3)

    stack.push(1)
    expect(stack.peek).to eq(1)

    stack.push(5)
    expect(stack.peek).to eq(1)

    stack.push(2)
    expect(stack.peek).to eq(1)

    stack.push(4)
    expect(stack.peek).to eq(1)
  end

  it "pop elements in sorted order" do
    stack = SortStack.new

    stack.push(3)
    stack.push(1)
    stack.push(5)
    stack.push(2)
    stack.push(4)

    expect(stack.pop).to eq(1)
    expect(stack.pop).to eq(2)
    expect(stack.pop).to eq(3)
    expect(stack.pop).to eq(4)
    expect(stack.pop).to eq(5)
    expect(stack.pop).to be_nil # Stack is empty
  end

  it "peek returns the top element without removing it" do
    stack = SortStack.new

    stack.push(3)
    stack.push(1)
    stack.push(5)

    expect(stack.peek).to eq(1)
    expect(stack.peek).to eq(1) # Peek again, the top element remains unchanged
  end

  it "empty? returns true for empty stack" do
    stack = SortStack.new

    expect(stack.empty?).to be true
  end

  it "empty? returns false for non-empty stack" do
    stack = SortStack.new

    stack.push(1)
    expect(stack.empty?).to be false
  end
end
