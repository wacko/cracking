// 5. *One Away*:

// There are three types of edits that can be performed on strings:
// insert a character, remove a character, or replace a character.
// Given two strings, write a function to check if they are one edit (or zero edits) away.

export default function isOneAway(str1: string, str2: string): boolean {
  if  (Math.abs(str1.length - str2.length) > 1) { return false }

  let pos1 = 0
  let pos2 = 0
  let changed = false

  while (pos1 < str1.length && pos2 < str2.length) {
    if (str1[pos1] == str2[pos2]) {
      pos1++
      pos2++
    } else if (changed) {
      return false
    } else if (str1.length > str2.length) {
      changed = true
      pos1++
    } else if (str1.length < str2.length) {
      changed = true
      pos2++
    } else {
      changed = true
      pos1++
      pos2++
    }
  }
  return true;
}

describe("05 - oneAway", () => {
  test("One Away - Replace", () => {
    expect(isOneAway("pale", "bale")).toEqual(true); // Replacement
    expect(isOneAway("bbaa", "bcca")).toEqual(false); // Replacement
  });

  test("One Away - Replace", () => {
    expect(isOneAway("pale", "bale")).toEqual(true); // Replacement
  });

  test("One Away - Insert", () => {
    expect(isOneAway("pale", "ple")).toEqual(true); // Insertion
  });

  test("One Away - Remove", () => {
    expect(isOneAway("pale", "pales")).toEqual(true); // Removal
  });

  test("Same Strings", () => {
    expect(isOneAway("abc", "abc")).toEqual(true); // No edits
  });

  test("More Than One Edit Away", () => {
    expect(isOneAway("abcd", "efgh")).toEqual(false); // More than one edit away
  });

  test("More Than One Edit Away #2", () => {
    expect(isOneAway("palesa", "pale")).toEqual(false); // More than one edit away #2
  });

  test("Empty Strings", () => {
    expect(isOneAway("", "")).toEqual(true); // Empty strings are zero edits away
  });

  test("One Character Difference", () => {
    expect(isOneAway("a", "ab")).toEqual(true); // One character difference
  });

  test("Empty and Non-Empty String", () => {
    expect(isOneAway("", "a")).toEqual(true); // Empty string and a non-empty string
  });
});
