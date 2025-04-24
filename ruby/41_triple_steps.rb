# 1. *Triple Step*:

# A child is running up a staircase with n steps and can hop either
# 1 step, 2 steps, or 3 steps at a time. Implement a method to count
# how many possible ways the child can run up the stairs.
#

def triple_step(n)
  # TODO: implement function
end


RSpec.describe "triple_step" do
  it "returns correct count for valid input" do
    # Test cases with expected counts
    expect(triple_step(0)).to eq(0) # No steps
    expect(triple_step(1)).to eq(1) # 1 step: (1)
    expect(triple_step(2)).to eq(2) # 2 steps: (1, 1), (2)
    expect(triple_step(3)).to eq(4) # 3 steps: (1, 1, 1), (1, 2), (2, 1), (3)
    expect(triple_step(4)).to eq(7) # 4 steps: (1, 1, 1, 1), (1, 1, 2), (1, 2, 1), (2, 1, 1), (1, 3), (3, 1), (2, 2)
    expect(triple_step(5)).to eq(13) # 5 steps: (1, 1, 1, 1, 1), (1, 1, 1, 2), (1, 1, 2, 1), (1, 2, 1, 1), (2, 1, 1, 1), (1, 2, 2), (2, 1, 2), (2, 2, 1), (1, 1, 3), (1, 3, 1), (3, 1, 1), (2, 3), (3, 2)
    # Add more test cases as needed
  end

  it "returns 0 for negative input" do
    expect(triple_step(-1)).to eq(0) # Negative input
    expect(triple_step(-10)).to eq(0) # Negative input
  end
end
