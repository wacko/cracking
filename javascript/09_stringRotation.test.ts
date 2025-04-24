// 9. *String Rotation*;

// Assume you have a method isSubstring which checks if one word is a substring of another.
// Given two strings, s1 and s2, write code to check if s2 is a rotation of s1 using only one call to isSubstring.
// [e.g., "waterbottle" is a rotation of 'erbottlewat")


const createIsSubstring = () => {
  let called = false

  return (s1: string, s2: string) => {
    if (called) throw new Error("isSubstring() can be used only once.")
    called = true
    return s1.includes(s2)
  }
}

/**
 * Checks if a string is included in another string.
 * It can only be used once.
 * (used in problem 09: String rotation.)
 *
 * @param {string} s1 - String to compare
 * @param {string} s2 - Substring.
 * @return {boolean} If s1 contains s2.
 */
const isSubstring = createIsSubstring()


export default function stringRotation(s1: string, s2: string): boolean {
  // TODO: implement function
  return true;
}


describe("09 - stringRotation", () => {
  test("rotates a string", () => {
    const str1 = "Hello";
    const str2 = "oHell";
    const result = stringRotation(str1, str2);
    expect(result).toEqual(true);
  });

  test("rotates another string", () => {
    const str1 = "waterbottle";
    const str2 = "erbottlewat";
    const result = stringRotation(str1, str2);
    expect(result).toEqual(true);
  });
});
