// 8. *First Common Ancestor*:

// Design an algorithm and write code to find the first common ancestor of two nodes
// in a binary tree. Avoid storing additional nodes in a data structure.
// NOTE: This is not necessarily a binary search tree.

export type TreeNode<T> = {
  value: T;
  left?: TreeNode<T>;
  right?: TreeNode<T>;
};

export default function firstCommonAncestor<T>(
  root: TreeNode<T> | undefined,
  p: TreeNode<T>,
  q: TreeNode<T>,
): TreeNode<T> | undefined {
  // TODO: implement function
  return undefined;
}

const createNode = <T>(
  value: T,
  left?: TreeNode<T>,
  right?: TreeNode<T>,
): TreeNode<T> => {
  return { value, left, right };
};


describe("firstCommonAncestor", () => {
  test("returns correct common ancestor for valid input", () => {
    /*
                   1
                  / \
                 2   3
                / \ / \
               4  5 6  7
        */
    const root: TreeNode<number> = createNode(
      1,
      createNode(2, createNode(4), createNode(5)),
      createNode(3, createNode(6), createNode(7)),
    );
    expect(firstCommonAncestor(root, root.left!, root.right!)).toBe(root); // Common ancestor of 2 and 3 is 1
    expect(firstCommonAncestor(root, root.left!.left!, root.left!.right!)).toBe(
      root.left,
    ); // Common ancestor of 4 and 5 is 2
    expect(
      firstCommonAncestor(root, root.left!.left!, root.right!.right!),
    ).toBe(root); // Common ancestor of 4 and 7 is 1
  });
});
