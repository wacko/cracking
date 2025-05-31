# Coin Change: https:#leetcode.com/problems/coin-change-ii/description/
# You are given an integer array coins representing coins of different denominations and an integer amount representing a total amount of money.
# Return the number of combinations that make up that amount. If that amount of money cannot be made up by any combination of the coins, return 0.

# Input: amount = 5, coins = [1,2,5]
# Output: 4
# Explanation: there are four ways to make up the amount:
# 5=5
# 5=2+2+1
# 5=2+1+1+1
# 5=1+1+1+1+1

# coin_change(amount: number, coins: Array<number>): number
def coin_change(amount, coins)
  total = 0
  coin_change_rec(amount, coins.sort.reverse) do
    total = total + 1
  end
  total
end

def coin_change_rec(amount, coins, &blk)
  return if coins.size == 0

  remainder = amount - coins.first
  if remainder > 0
    coin_change_rec(remainder, coins, &blk)
  elsif remainder == 0
    yield
  end

  coin_change_rec(amount, coins[1..-1], &blk)
end

RSpec.describe "Coin Change" do
  it "returns 0 if coins are invalid or do not match" do
    expect(coin_change(10, [15])).to eq(0)
    expect(coin_change(10, [])).to eq(0)
    expect(coin_change(10, [7])).to eq(0)
  end

  it "returns correct counts for various examples" do
    expect(coin_change(5, [1, 2, 5])).to eq(4)
    expect(coin_change(10, [10])).to eq(1)
  end
end
