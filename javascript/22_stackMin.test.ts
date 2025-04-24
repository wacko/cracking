// 2. *Stack Min*: How would you design a stack which,
// in addition to push and pop,
// has a function min which returns the minimum element?
// Push, pop, and min should all operate in O(1) time.
//

export default class StackMin<T> {
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

    min(): T | undefined {
      // TODO: implement function
      return undefined;
    }
}


describe('StackMin', () => {
    test('push and pop elements from stack', () => {
        const stack = new StackMin<number>();

        stack.push(5);
        stack.push(2);
        stack.push(8);
        stack.push(1);

        expect(stack.min()).toBe(1); // Minimum element is 1

        expect(stack.pop()).toBe(1);
        expect(stack.min()).toBe(2); // Minimum element is 2

        expect(stack.pop()).toBe(8);
        expect(stack.min()).toBe(2); // Minimum element is 2

        expect(stack.pop()).toBe(2);
        expect(stack.min()).toBe(5); // Minimum element is 5

        expect(stack.pop()).toBe(5);
        expect(stack.min()).toBeUndefined(); // Stack is empty
    });

    test('min method returns undefined when stack is empty', () => {
        const stack = new StackMin<number>();

        expect(stack.min()).toBeUndefined();
    });

    test('push and pop mixed with min operations', () => {
        const stack = new StackMin<number>();

        stack.push(3);
        expect(stack.min()).toBe(3);

        stack.push(5);
        expect(stack.min()).toBe(3);

        stack.push(2);
        expect(stack.min()).toBe(2);

        stack.push(1);
        expect(stack.min()).toBe(1);

        expect(stack.pop()).toBe(1);
        expect(stack.min()).toBe(2);

        expect(stack.pop()).toBe(2);
        expect(stack.min()).toBe(3);

        stack.push(0);
        expect(stack.min()).toBe(0);

        expect(stack.pop()).toBe(0);
        expect(stack.min()).toBe(3);

        expect(stack.pop()).toBe(5);
        expect(stack.min()).toBe(3);

        expect(stack.pop()).toBe(3);
        expect(stack.min()).toBeUndefined();
    });
});
