// 5. *Sort Stack*:

// Write a program to sort a stack such that the smallest items are on the top.
// You can use an additional temporary stack, but you may not copy the elements
// into any other data structure (such as an array).
// The stack supports the following operations: push, pop, peek, and isEmpty.

export default class SortStack<T> {
    constructor() {
      // TODO: implement function
    }

    push(value: T): void {
      // TODO: implement function
    }

    pop(): T | undefined {
      // TODO: implement function
      return undefined;
    }

    peek(): T | undefined {
      // TODO: implement function
      return undefined;
    }

    isEmpty(): boolean {
      // TODO: implement function
      return true;    }
}


describe('SortStack', () => {
    test('push elements in sorted order', () => {
        const stack = new SortStack<number>();

        stack.push(3);
        expect(stack.peek()).toBe(3);

        stack.push(1);
        expect(stack.peek()).toBe(1);

        stack.push(5);
        expect(stack.peek()).toBe(1);

        stack.push(2);
        expect(stack.peek()).toBe(1);

        stack.push(4);
        expect(stack.peek()).toBe(1);
    });

    test('pop elements in sorted order', () => {
        const stack = new SortStack<number>();

        stack.push(3);
        stack.push(1);
        stack.push(5);
        stack.push(2);
        stack.push(4);

        expect(stack.pop()).toBe(1);
        expect(stack.pop()).toBe(2);
        expect(stack.pop()).toBe(3);
        expect(stack.pop()).toBe(4);
        expect(stack.pop()).toBe(5);
        expect(stack.pop()).toBeUndefined(); // Stack is empty
    });

    test('peek returns the top element without removing it', () => {
        const stack = new SortStack<number>();

        stack.push(3);
        stack.push(1);
        stack.push(5);

        expect(stack.peek()).toBe(1);
        expect(stack.peek()).toBe(1); // Peek again, the top element remains unchanged
    });

    test('isEmpty returns true for empty stack', () => {
        const stack = new SortStack<number>();

        expect(stack.isEmpty()).toBe(true);
    });

    test('isEmpty returns false for non-empty stack', () => {
        const stack = new SortStack<number>();

        stack.push(1);
        expect(stack.isEmpty()).toBe(false);
    });
});
