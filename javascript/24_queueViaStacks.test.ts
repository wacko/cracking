// 4. *Queue via Stacks*:

// Implement a MyQueue class which implements a queue using two stacks.

export default class MyQueue<T> {
    constructor() {
      // TODO: implement function
    }

    enqueue(value: T): void {
      // TODO: implement function
    }

    dequeue(): T | undefined {
      // TODO: implement function
      return undefined;
    }

    peek(): T | undefined {
      // TODO: implement function
      return undefined;
    }

    isEmpty(): boolean {
      // TODO: implement function
      return true;
    }
}


describe('MyQueue', () => {
    test('enqueue and dequeue elements from queue', () => {
        const queue = new MyQueue<number>();

        queue.enqueue(1);
        queue.enqueue(2);
        queue.enqueue(3);

        expect(queue.dequeue()).toBe(1);
        expect(queue.dequeue()).toBe(2);
        expect(queue.dequeue()).toBe(3);
        expect(queue.dequeue()).toBeUndefined(); // Queue is empty
    });

    test('enqueue and dequeue mixed with peek operations', () => {
        const queue = new MyQueue<number>();

        queue.enqueue(1);
        expect(queue.peek()).toBe(1);

        queue.enqueue(2);
        expect(queue.peek()).toBe(1);

        expect(queue.dequeue()).toBe(1);
        expect(queue.peek()).toBe(2);

        queue.enqueue(3);
        expect(queue.peek()).toBe(2);

        expect(queue.dequeue()).toBe(2);
        expect(queue.peek()).toBe(3);

        expect(queue.dequeue()).toBe(3);
        expect(queue.peek()).toBeUndefined(); // Queue is empty
    });

    test('peek from empty queue returns undefined', () => {
        const queue = new MyQueue<number>();

        expect(queue.peek()).toBeUndefined();
    });

    test('isEmpty returns true for empty queue', () => {
        const queue = new MyQueue<number>();

        expect(queue.isEmpty()).toBe(true);
    });

    test('isEmpty returns false for non-empty queue', () => {
        const queue = new MyQueue<number>();

        queue.enqueue(1);
        expect(queue.isEmpty()).toBe(false);
    });
});
