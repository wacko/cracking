/*
Coin Change: https://leetcode.com/problems/coin-change-ii/description/
You are given an integer array coins representing coins of different denominations and an integer amount representing a total amount of money.
Return the number of combinations that make up that amount. If that amount of money cannot be made up by any combination of the coins, return 0.

Input: amount = 5, coins = [1,2,5]
Output: 4
Explanation: there are four ways to make up the amount:
5=5
5=2+2+1
5=2+1+1+1
5=1+1+1+1+1

*/

export function coinChange(amount: number, coins: Array<number>): number {
  // TODO: implement function
  return 0;
}


describe("Coin Change", () => {
  test("returns 0 if coins are invalid or do not match", () => {
    expect(coinChange(10, [15])).toEqual(0);
    expect(coinChange(10, [])).toEqual(0);
    expect(coinChange(10, [7])).toEqual(0);
  });

  test("returns correct counts for various examples", () => {
    expect(coinChange(5, [1, 2, 5])).toEqual(4);
    expect(coinChange(10, [10])).toEqual(1);
  });
});
