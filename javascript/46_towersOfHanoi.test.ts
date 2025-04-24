// 6. *Towers of Hanoi*:

// In the classic problem of the Towers of Hanoi, you have 3 towers and
// N disks of different sizes which can slide onto any tower.
// The puzzle starts with disks sorted in ascending order of size from top to bottom
// (i.e., each disk sits on top of an even larger one).
//
// You have the following constraints:
// Only one disk can be moved at a time.
// A disk is slid off the top of one tower onto another tower.
// A disk cannot be placed on top of a smaller disk.
// Write a program to move the disks from the first tower to the last using stacks.

type Tower = number[];

export function towersOfHanoi(n: number): [Tower, Tower, Tower] {
  // TODO: implement function
  return [[], [], []];
}


describe('towersOfHanoi', () => {
    test('returns correct tower configuration after moving disks', () => {
        const result1 = towersOfHanoi(3);
        expect(result1).toEqual([[], [], [3,2,1]]); 

        const result2 = towersOfHanoi(4);
        expect(result2).toEqual([[], [], [4, 3, 2, 1]]); 

        const result3 = towersOfHanoi(5);
        expect(result3).toEqual([ [], [], [5, 4, 3, 2, 1]]); 
    });
});
