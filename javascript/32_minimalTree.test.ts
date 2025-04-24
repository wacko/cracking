// 2. *Minimal Tree*:

// Given a sorted (increasing order) array with unique integer elements,
// write an algorithm to create a binary search tree with minimal height.
//
// A binary search tree is a search where for each node,
// lesser elements are on the left node, and greater elements on the right node.
//
// Input: [1,2,3,4,5,6,7,8]
// Output:
//      5
//   2  |  7
// 1   3|6   8
//
//

export type TreeNode<T> = {
  value: T;
  left?: TreeNode<T>;
  right?: TreeNode<T>;
};

export default function minimalTree<T>(
  sortedArray: T[],
): TreeNode<T> | undefined {
  // TODO: implement function
  return undefined;
}


describe('minimalTree', () => {
    test('creates minimal height BST from sorted array', () => {
        const sortedArray = [1, 2, 3];
        const expectedTree: TreeNode<number> = {
            value: 2,
            left: { value: 1 },
            right: { value: 3 }
        };
        expect(minimalTree(sortedArray)).toEqual(expectedTree);
    });

    test('creates minimal height BST from sorted array 5 length', () => {
        const sortedArray = [1, 2, 3, 4, 5];
        const expectedTree: TreeNode<number> = {
            value: 3,
            left: {
                left: {
                    value: 1,
                },
                value: 2,
            },
            right: {
                left: {
                    value: 4,
                },
                value: 5,
            },
        }
        expect(minimalTree(sortedArray)).toEqual(expectedTree);
    });

    test('creates minimal height BST from sorted array 7 length', () => {
        const sortedArray = [1, 2, 3, 4, 5, 6, 7];
        const expectedTree: TreeNode<number> = {
            value: 4,
            left: {
                value: 2,
                left: {
                    value: 1,
                },
                right: {
                    value: 3,
                },
            },
            right: {
                value: 6,
                left: {
                    value: 5,
                },
                right: {
                    value: 7,
                },
            },
        }
        expect(minimalTree(sortedArray)).toEqual(expectedTree);
    });

    test('returns toBeUndefined for empty array', () => {
        const sortedArray: number[] = [];
        expect(minimalTree(sortedArray)).toBeUndefined();
    });
});
