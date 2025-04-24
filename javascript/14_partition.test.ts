// 4. *Partition*:

// Write code to partition a linked list around a value x,
// such that all nodes less than x come before all nodes greater than or equal to x.
// If x is contained within the list, the values of x only need to be after the elements
// less than x (see below). The partition element x can appear anywhere in the
// "right partition"; it does not need to appear between the left and right partitions.

// ```
// EXAMPLE
// Input: 3 -> 5 -> 8 -> 5 -> 10 -> 2 -> 1[partition=5]
// Output: 3 -> 1 -> 2 -> 10 -> 5 -> 5 -> 8
// ```

import { LinkedList } from "./10_LinkedList";

export type Node<T> = {
  value: T;
  next?: Node<T>;
};

export default function partition<T>(
  head: Node<T> | undefined,
  x: T,
): Node<T> | undefined {
  // TODO: implement function
  return undefined;
}


describe('partition', () => {
    test('partitions the list correctly', () => {
        // Create a linked list: 3 -> 5 -> 8 -> 5 -> 10 -> 2 -> 1
        const node1: Node<number> = { value: 3 };
        const node2: Node<number> = { value: 5 };
        const node3: Node<number> = { value: 8 };
        const node4: Node<number> = { value: 5 };
        const node5: Node<number> = { value: 10 };
        const node6: Node<number> = { value: 2 };
        const node7: Node<number> = { value: 1 };
        node1.next = node2;
        node2.next = node3;
        node3.next = node4;
        node4.next = node5;
        node5.next = node6;
        node6.next = node7;

        const result = partition(node1, 5);
        
        // Expected partitioned list: 3 -> 2 -> 1 -> 5 -> 8 -> 5 -> 10
        expect(result!.value).toEqual(3);
        expect(result!.next!.value).toEqual(2);
        expect(result!.next!.next!.value).toEqual(1);
        expect(result!.next!.next!.next!.value).toEqual(5);
        expect(result!.next!.next!.next!.next!.value).toEqual(8);
        expect(result!.next!.next!.next!.next!.next!.value).toEqual(5);
        expect(result!.next!.next!.next!.next!.next!.next!.value).toEqual(10);
    });

    test('handles single node list correctly', () => {
        // Single node list: 5
        const node1: Node<number> = { value: 5 };

        const result = partition(node1, 5);
        
        // Expected partitioned list: 5
        expect(result!.value).toEqual(5);
        expect(result!.next).toBeUndefined();
    });

    test('handles all nodes less than x', () => {
        // Create a linked list: 3 -> 2 -> 1 -> 4 -> 5
        const node1: Node<number> = { value: 3 };
        const node2: Node<number> = { value: 2 };
        const node3: Node<number> = { value: 1 };
        const node4: Node<number> = { value: 4 };
        const node5: Node<number> = { value: 5 };
        node1.next = node2;
        node2.next = node3;
        node3.next = node4;
        node4.next = node5;

        const result = partition(node1, 6);
        
        // Expected partitioned list: 3 -> 2 -> 1 -> 4 -> 5
        expect(result!.value).toEqual(3);
        expect(result!.next!.value).toEqual(2);
        expect(result!.next!.next!.value).toEqual(1);
        expect(result!.next!.next!.next!.value).toEqual(4);
        expect(result!.next!.next!.next!.next!.value).toEqual(5);
    });

    test('handles all nodes greater than or equal to x', () => {
        // Create a linked list: 3 -> 2 -> 1 -> 4 -> 5
        const node1: Node<number> = { value: 3 };
        const node2: Node<number> = { value: 2 };
        const node3: Node<number> = { value: 1 };
        const node4: Node<number> = { value: 4 };
        const node5: Node<number> = { value: 5 };
        node1.next = node2;
        node2.next = node3;
        node3.next = node4;
        node4.next = node5;

        const result = partition(node1, 0);
        
        // Expected partitioned list: 3 -> 2 -> 1 -> 4 -> 5
        expect(result!.value).toEqual(3);
        expect(result!.next!.value).toEqual(2);
        expect(result!.next!.next!.value).toEqual(1);
        expect(result!.next!.next!.next!.value).toEqual(4);
        expect(result!.next!.next!.next!.next!.value).toEqual(5);
    });
});
