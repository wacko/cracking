// 3. *Delete Middle Node*:

// Implement an algorithm to delete a node in the middle
// (i.e., any node but the first and last node, not necessarily the exact middle)
// of a singly linked list, given only access to that node.

// ```
// EXAMPLE
// Input: the node c from the linked list a - >b- >c - >d - >e- >f
// Result: nothing is returned, but the new linked list looks like a->b->d->e->f Hints: #72
// ```

import { LinkedList } from "./10_LinkedList";

export type Node<T> = {
  value: T;
  next?: Node<T>;
};

export default function deleteMiddleNode<T>(
  head: Node<T>,
  position: number,
): Node<T> | undefined {
  // TODO: implement function
  return undefined;
}

describe("deleteMiddleNode", () => {
  test("deletes middle node at position 1", () => {
    const node = {
      value: 0,
      next: { value: 1, next: { value: 2, next: { value: 3 } } },
    };

    const result = deleteMiddleNode(node, 1);

    expect(result).toEqual({
      value: 0,
      next: { value: 2, next: { value: 3 } },
    });
  });

  test("no deletion if position is out of range", () => {
    const head: Node<number> = { value: 1 };
    head.next = { value: 2 };
    head.next.next = { value: 3 };

    const result = deleteMiddleNode(head, 4);

    let expectedValue = 1;
    let curr: Node<number> | undefined | null = result;
    while (curr) {
      expect(curr.value).toBe(expectedValue);
      expectedValue++;
      curr = curr.next;
    }
  });

  test("no deletion if position is less than 1", () => {
    const head: Node<number> = { value: 1 };
    head.next = { value: 2 };
    head.next.next = { value: 3 };

    const result = deleteMiddleNode(head, 0);

    let expectedValue = 1;
    let curr: Node<number> | undefined | null = result;
    while (curr) {
      expect(curr.value).toBe(expectedValue);
      expectedValue++;
      curr = curr.next;
    }
  });

  test("no deletion if list has only one node", () => {
    const head: Node<number> = { value: 1 };

    const result = deleteMiddleNode(head, 2);

    expect(result?.value).toBe(1);
    expect(result?.next).toBeUndefined();
  });

  test("no deletion if list has only two nodes", () => {
    const head: Node<number> = { value: 1 };
    head.next = { value: 2 };

    const result = deleteMiddleNode(head, 2);

    // Ensure that no deletion occurred
    expect(result?.value).toBe(1);
    expect(result?.next?.value).toBe(2);
    expect(result?.next?.next).toBeUndefined();
  });
});
