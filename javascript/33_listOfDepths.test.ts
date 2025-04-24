// 3. *List of Depths*:

// Given a binary tree, design an algorithm which creates a linked list
// of all the nodes at each depth (e.g., if you have a tree with depth D,
// you'll have D linked lists).

export type TreeNode<T> = {
  value: T;
  left?: TreeNode<T>;
  right?: TreeNode<T>;
};

export type ListNode<T> = {
  value: T;
  next?: ListNode<T>;
};

export default function listOfDepths<T>(
  root: TreeNode<T> | null,
): ListNode<T>[] {
  // TODO: implement function
  return [];
}


describe("listOfDepths", () => {
  test("creates linked lists of nodes at each depth", () => {
    /*
                    1
                   / \
                  2   3
                 / \   \
                4   5   6
               /
              7
        */
    const root: TreeNode<number> = {
      value: 1,
      left: {
        value: 2,
        left: {
          value: 4,
          left: { value: 7 },
        },
        right: { value: 5 },
      },
      right: {
        value: 3,
        right: { value: 6 },
      },
    };

    const expectedLists: ListNode<number>[] = [
      { value: 1 }, // Depth 0: [1]
      { value: 2, next: { value: 3 } }, // Depth 1: [2, 3]
      { value: 4, next: { value: 5, next: { value: 6 } } }, // Depth 2: [4, 5, 6]
      { value: 7 }, // Depth 3: [7]
    ];

    expect(listOfDepths(root)).toEqual(expectedLists);
  });

  test("creates linked lists for single node tree", () => {
    const root: TreeNode<number> = { value: 1 };
    const expectedList: Array<ListNode<number>> = [{ value: 1 }];
    expect(listOfDepths(root)).toEqual(expectedList);
  });
});
