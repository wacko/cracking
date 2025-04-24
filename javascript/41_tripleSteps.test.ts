// 1. *Triple Step*:

// A child is running up a staircase with n steps and can hop either
// 1 step, 2 steps, or 3 steps at a time. Implement a method to count
// how many possible ways the child can run up the stairs.
//

export default function tripleStep(n: number): number {
  // TODO: implement function
  return 0;
}


describe("tripleStep", () => {
  test("returns correct count for valid input", () => {
    // Test cases with expected counts
    expect(tripleStep(0)).toBe(0); // No steps
    expect(tripleStep(1)).toBe(1); // 1 step: (1)
    expect(tripleStep(2)).toBe(2); // 2 steps: (1, 1), (2)
    expect(tripleStep(3)).toBe(4); // 3 steps: (1, 1, 1), (1, 2), (2, 1), (3)
    expect(tripleStep(4)).toBe(7); // 4 steps: (1, 1, 1, 1), (1, 1, 2), (1, 2, 1), (2, 1, 1), (1, 3), (3, 1), (2, 2)
    expect(tripleStep(5)).toBe(13); // 5 steps: (1, 1, 1, 1, 1), (1, 1, 1, 2), (1, 1, 2, 1), (1, 2, 1, 1), (2, 1, 1, 1), (1, 2, 2), (2, 1, 2), (2, 2, 1), (1, 1, 3), (1, 3, 1), (3, 1, 1), (2, 3), (3, 2)
    // Add more test cases as needed
  });

  test("returns 0 for negative input", () => {
    expect(tripleStep(-1)).toBe(0); // Negative input
    expect(tripleStep(-10)).toBe(0); // Negative input
  });
});
