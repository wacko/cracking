// 7. *Build Order*:

// You are given a list of projects and a list of dependencies
// (which is a list of pairs of projects, where the second project is
// dependent on the first project). All of a project's dependencies
// must be built before the project is. Find a build order that will allow
// the projects to be built. If there is no valid build order, return an error.

// ```
// EXAMPLE Input:
// projects: a, b, c, d, e, f
// dependencies: (a, d), (f, b), (b, d), (f, a), (d, c)
// Output: e, f, a, b, d, c
// ```

export default function buildOrder(projects: string[], dependencies: string[][]): string[] | string {
  // TODO: implement function
  return "";
}


describe("buildOrder", () => {
  test("returns correct build order for valid input", () => {
    const projects1 = ["a", "b", "c", "d", "e", "f"];
    const dependencies1 = [
      ["a", "d"],
      ["f", "b"],
      ["b", "d"],
      ["f", "a"],
      ["d", "c"],
    ];
    expect(buildOrder(projects1, dependencies1)).toEqual([
      "e",
      "f",
      "a",
      "b",
      "d",
      "c",
    ]);
  });

  test("throws error for no valid order", () => {
    const projects = ["a", "b", "c", "d", "e"];
    const dependencies = [
      ["a", "d"],
      ["f", "b"],
      ["b", "d"],
      ["f", "a"],
      ["d", "c"],
    ];
    expect(() => buildOrder(projects, dependencies)).toThrowError(
      /No valid build order exists/,
    );
  });

  test("returns correct build order for single project", () => {
    const projects = ["a"];
    const dependencies: [string, string][] = [];
    expect(buildOrder(projects, dependencies)).toEqual(["a"]);
  });

  test("returns correct build order for empty input", () => {
    const projects: string[] = [];
    const dependencies: [string, string][] = [];
    expect(buildOrder(projects, dependencies)).toEqual([]);
  });
});
