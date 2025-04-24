// 6.  Suppose the digits are stored in forward order. Repeat the above problem.

// ```
// EXAMPLE
// Input: (6 -> 1 -> 7) + (2 -> 9 -> 5).Thatis,617 + 295
// Output:9 -> 1 -> 2,Thatis,912.
// ```

import { LinkedList } from "./10_LinkedList";

export type Node<T> = {
  value: T;
  next?: Node<T>;
};

export default function sumListsForwardOrder(
  list1: Node<number> | undefined,
  list2: Node<number> | undefined,
): Node<number> | undefined {
  // TODO: implement function
  return undefined;
}


describe("16 - sumListsForwardOrder", () => {
  test("sums two non-empty lists without carryover", () => {
    // 123 + 456 = 579
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
    const result = sumListsForwardOrder(list1, list2);
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
      value: 1,
      next: { value: 0, next: { value: 0, next: { value: 0 } } },
    };
    const result = sumListsForwardOrder(list1, list2);
    expect(result).toEqual(expectedResult);
  });

  test("sums two lists with different lengths", () => {
    // 1234 + 56 = 1290
    const list1: Node<number> = {
      value: 1,
      next: { value: 2, next: { value: 3, next: { value: 4 } } },
    };
    const list2: Node<number> = { value: 5, next: { value: 6 } };
    const expectedResult: Node<number> = {
      value: 1,
      next: { value: 2, next: { value: 9, next: { value: 0 } } },
    };
    const result = sumListsForwardOrder(list1, list2);
    expect(result).toEqual(expectedResult);
  });

  test("sums two empty lists", () => {
    const result = sumListsForwardOrder(undefined, undefined);
    expect(result).toBeUndefined();
  });

  test("sums one empty list and one non-empty list", () => {
    // 123 + 0 = 123
    const list1: Node<number> = {
      value: 1,
      next: { value: 2, next: { value: 3 } },
    };
    const result = sumListsForwardOrder(list1, undefined);
    expect(result).toEqual(list1);
  });
});
