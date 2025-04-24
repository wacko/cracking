# 4. *Queue via Stacks*:

# Implement a MyQueue class which implements a queue using two stacks.

class MyQueue
  def enqueue(value)
    # TODO: implement function
  end

  def dequeue
    # TODO: implement function
  end

  def peek
    # TODO: implement function
  end

  def empty?
    # TODO: implement function
  end
end

RSpec.describe "MyQueue" do
  it "enqueue and dequeue elements from queue" do
    queue = MyQueue.new

    queue.enqueue(1)
    queue.enqueue(2)
    queue.enqueue(3)

    expect(queue.dequeue).to eq(1)
    expect(queue.dequeue).to eq(2)
    expect(queue.dequeue).to eq(3)
    expect(queue.dequeue).to be_nil # Queue is empty
  end

  it "enqueue and dequeue mixed with peek operations" do
    queue = MyQueue.new

    queue.enqueue(1)
    expect(queue.peek).to eq(1)

    queue.enqueue(2)
    expect(queue.peek).to eq(1)

    expect(queue.dequeue).to eq(1)
    expect(queue.peek).to eq(2)

    queue.enqueue(3)
    expect(queue.peek).to eq(2)

    expect(queue.dequeue).to eq(2)
    expect(queue.peek).to eq(3)

    expect(queue.dequeue).to eq(3)
    expect(queue.peek).to be_nil # Queue is empty
  end

  it "peek from empty queue returns undefined" do
    queue = MyQueue.new

    expect(queue.peek).to be_nil
  end

  it "empty? returns true for empty queue" do
    queue = MyQueue.new

    expect(queue.empty?).to be true
  end

  it "empty? returns false for non-empty queue" do
    queue = MyQueue.new

    queue.enqueue(1)
    expect(queue.empty?).to be false
  end
end
