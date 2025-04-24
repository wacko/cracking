// 5. *Sum Lists*: You have two numbers represented by a linked list,
// where each node contains a single digit. The digits are stored in reverse order,
// such that the Vs digit is at the head of the list.
// Write a function that adds the two numbers and returns the sum as a linked list.

// ```
// EXAMPLE
// Input: (7-> 1 -> 6) + (5 -> 9 -> 2).That is,617 + 295.
// Output: 2 -> 1 -> 9. That is, 912.
// ```

import { LinkedList } from "./10_LinkedList";

export type Node<T> = {
  value: T;
  next?: Node<T>;
};

export default function sumLists(
  list1: Node<number> | undefined,
  list2: Node<number> | undefined,
): Node<number> | undefined {
  // TODO: implement function
  return undefined;
}


describe("sumLists", () => {
  test("sums two non-empty lists without carryover", () => {
    // 321 + 654 = 975
    const list1: Node<number> = {
      value: 1,
      next: { value: 2, next: { value: 3 } },
    };
    const list2: Node<number> = {
      value: 4,
      next: { value: 5, next: { value: 6 } },
    };
    const expectedResult: Node<number> = {
      value: 5,
      next: { value: 7, next: { value: 9 } },
    };
    const result = sumLists(list1, list2);
    expect(result).toEqual(expectedResult);
  });

  test("sums two non-empty lists with carryover", () => {
    // 999 + 1 = 1000
    const list1: Node<number> = {
      value: 9,
      next: { value: 9, next: { value: 9 } },
    };
    const list2: Node<number> = { value: 1 };
    const expectedResult: Node<number> = {
      value: 0,
      next: { value: 0, next: { value: 0, next: { value: 1 } } },
    };
    const result = sumLists(list1, list2);
    expect(result).toEqual(expectedResult);
  });

  test("sums two lists with different lengths", () => {
    // 4321 + 65 = 4386
    const list1: Node<number> = {
      value: 1,
      next: { value: 2, next: { value: 3, next: { value: 4 } } },
    };
    const list2: Node<number> = { value: 5, next: { value: 6 } };
    const expectedResult: Node<number> = {
      value: 6,
      next: { value: 8, next: { value: 3, next: { value: 4 } } },
    };
    const result = sumLists(list1, list2);
    expect(result).toEqual(expectedResult);
  });
});
