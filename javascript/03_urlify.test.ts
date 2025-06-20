// 3.  URLify:

// Write a method to replace all spaces in a string with '%20'.
// You may assume that the string has sufficient space at the end to hold the additional characters,
// and that you are given the "true" length of the string.

export default function URLify (s1 : string): string {
  // This does not replace in-place
  let url = "";
  for (let i = 0; i < s1.length; i++) {
    if (s1[i] == " ") {
      url += "%20"
    } else {
      url += s1[i]
    }
  }

  return url;
}


describe('03 - URLify', () =>{
  test("Replaces spaces in a string with '%20'", () =>{
    expect(URLify('ab c')).toEqual('ab%20c');
  });

  test("Handles leading and trailing spaces", () =>{
    expect(URLify('  ab c  ')).toEqual('%20%20ab%20c%20%20');
  });

  test("Returns empty string when input is empty", () =>{
    expect(URLify('')).toEqual('');
  });

  test("Doesn't modify string without spaces", () =>{
    expect(URLify('abc')).toEqual('abc');
  });

  test("Handles multiple consecutive spaces", () =>{
    expect(URLify('a  b   c')).toEqual('a%20%20b%20%20%20c');
  });

  test("Handles special characters", () =>{
    expect(URLify('a b!c')).toEqual('a%20b!c');
  });

  test("Mr 3ohn Smith", () =>{
    expect(URLify('Mr 3ohn Smith')).toEqual('Mr%203ohn%20Smith');
  });
});
