// 4. *Palindrome Permutation*: 

// Given a string, write a function to check if it is a permutation of a palindrome.
// A palindrome is a word or phrase that is the same forwards and backwards. A permutation is a rearrangement of letters.
// The palindrome does not need to be limited to just dictionary words.
// ```
// EXAMPLE
// Input: Tact Coa
// Output True (permutations: "taco cat", "atco cta", etc.)
// ```

export default function palindromePermutation (str: string): boolean {
  const chars: Record<string, number> = {}

  for (let i = 0; i < str.length; i++) {
    const char = str[i].toLowerCase()
    
    if (char == " ") { continue }
    if (chars[char]) {
      chars[char] += 1
    } else {
      chars[char] = 1
    }
  }

  return Object.values(chars).filter((count) => count % 2 != 0) <= 1
}

describe("04 - palindromePermutation", () => {
  test("Empty string", () => {
    expect(palindromePermutation("")).toEqual(true);
  });

  test("Single character string", () => {
    expect(palindromePermutation("a")).toEqual(true);
  });

  test("Palindrome with odd length", () => {
    expect(palindromePermutation("taco cat")).toEqual(true);
  });

  test("Palindrome with even length", () => {
    expect(palindromePermutation("rdeder")).toEqual(true);
  });

  test("Non-palindrome with odd length", () => {
    expect(palindromePermutation("hello")).toEqual(false);
  });

  test("Non-palindrome with even length", () => {
    expect(palindromePermutation("world")).toEqual(false);
  });

  test("String with mixed case", () => {
    expect(palindromePermutation("RaceCar")).toEqual(true);
  });

  test("String with non-alphanumeric characters", () => {
    expect(palindromePermutation("12321")).toEqual(true);
  });

  test("String with no possible palindrome permutation", () => {
    expect(palindromePermutation("abcdefg")).toEqual(false);
  });
});
