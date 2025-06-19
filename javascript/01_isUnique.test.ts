// 1. *Is Unique*:

// Implement an algorithm to determine if a string has all unique characters.
// What if you cannot use additional data structures?

export default function isUnique(str: string): boolean {
  const chars: Set<string> = new Set();

  for (let i = 0; i < str.length; i++) {
    if (chars.has(str[i])) {
      return false;
    } else {
      chars.add(str[i]);
    }
  }
  return true;
}

describe("01 - isUnique", () => {
  test("Returns true for unique characters", () => {
    expect(isUnique("abc")).toEqual(true);
    expect(isUnique("abcdefg")).toEqual(true);
    expect(isUnique("123456")).toEqual(true);
    expect(isUnique("!@#$%^")).toEqual(true);
  });

  test("Returns false for non-unique characters", () => {
    expect(isUnique("aab")).toEqual(false);
    expect(isUnique("hello")).toEqual(false);
    expect(isUnique("testing")).toEqual(false);
    expect(isUnique("1234456")).toEqual(false);
    expect(isUnique("abccdef")).toEqual(false);
  });

  test("Returns true for empty string", () => {
    expect(isUnique("")).toEqual(true);
  });

  test("Handles whitespace correctly", () => {
    expect(isUnique("a b c")).toEqual(false);
    expect(isUnique("ab c")).toEqual(true);
  });

  test("Handles special characters correctly", () => {
    expect(isUnique("!@#$%^&*")).toEqual(true);
    expect(isUnique("!@#$%^&*!")).toEqual(false);
  });

  test("Handles mixed case correctly", () => {
    expect(isUnique("aA")).toEqual(true);
    expect(isUnique("Aa")).toEqual(true);
    expect(isUnique("Hello")).toEqual(false);
  });
});
