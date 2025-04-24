// 6. *String Compression*:

// Implement a method to perform basic string compression using the counts of repeated characters.
// For example, the string aabcccccaaa would become a2blc5a3,
// If the "compressed" string would not become smaller than the original string,
// your method should return the original string.
// You can assume the string has only uppercase and lowercase letters (a - z).

export default function stringCompression (str: string) : string {
  // TODO: implement function
  return ""; 
}

describe('06 - stringCompression', () =>{
    test('compresses string with repeated characters', () => {
        expect(stringCompression('aabcccccaaa')).toBe('a2b1c5a3');
    });

    test('returns original string if compression does not reduce length', () => {
        expect(stringCompression('abcde')).toBe('abcde');
    });

    test('returns empty string for empty input', () => {
        expect(stringCompression('')).toBe('');
    });

    test('returns single character for string with single character', () => {
        expect(stringCompression('a')).toBe('a');
    });

    test('compresses string with uppercase and lowercase letters', () => {
        expect(stringCompression('AAAbbbCCCddd')).toBe('A3b3C3d3');
    });

    test('returns original string if no repeated characters', () => {
        expect(stringCompression('abcdef')).toBe('abcdef');
    });
});
