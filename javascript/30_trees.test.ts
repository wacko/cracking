// Write the basic tree algorithms of Depth-first-search and Breadth-first search.

export type TreeNode<T> = {
  value: T;
  left?: TreeNode<T>;
  right?: TreeNode<T>;
};

export class Tree<T> {
  bfs(node: TreeNode<T> | undefined, visit: (node: TreeNode<T>) => void) {
    // TODO: implement function
  }

  dfs(node: TreeNode<T> | undefined, visit: (node: TreeNode<T>) => void) {
    // TODO: implement function
  }
}


describe("Trees", () => {
  test("dfs navigates the tree in order", () => {
    const root: TreeNode<number> = {
      value: 1,
      left: {
        value: 2,
        left: {
          value: 3,
        },
        right: {
          value: 4,
        },
      },
      right: {
        value: 5,
        left: {
          value: 6,
          left: {
            value: 7,
          },
        },
        right: {
          value: 8,
        },
      },
    };

    const tree = new Tree<number>();
    const order: Array<TreeNode<number>> = [];
    tree.dfs(root, (node) => {
      order.push(node);
    });
    expect(order.map(({ value }) => value)).toEqual([1, 2, 3, 4, 5, 6, 7, 8]);
  });

  test("bfs navigates the tree in order", () => {
    const root: TreeNode<number> = {
      value: 1,
      left: {
        value: 2,
        left: {
          value: 4,
        },
        right: {
          value: 5,
        },
      },
      right: {
        value: 3,
        left: {
          value: 6,
          left: {
            value: 8,
          },
        },
        right: {
          value: 7,
        },
      },
    };

    const tree = new Tree<number>();
    const order: Array<TreeNode<number>> = [];
    tree.bfs(root, (node) => {
      order.push(node);
    });
    expect(order.map(({ value }) => value)).toEqual([1, 2, 3, 4, 5, 6, 7, 8]);
  });
});
