# 7. *Build Order*:

# You are given a list of projects and a list of dependencies
# (which is a list of pairs of projects, where the second project is
# dependent on the first project). All of a project's dependencies
# must be built before the project is. Find a build order that will allow
# the projects to be built. If there is no valid build order, return an error.

# ```
# EXAMPLE Input:
# projects: a, b, c, d, e, f
# dependencies: (a, d), (f, b), (b, d), (f, a), (d, c)
# Output: e, f, a, b, d, c
# ```

# build_order(projects: string[], dependencies: string[][]) => string[] | string
def build_order(projects, dependencies)
  # TODO: implement function
end


RSpec.describe "build_order" do
  it "returns correct build order for valid input" do
    projects1 = ["a", "b", "c", "d", "e", "f"]
    dependencies1 = [
      ["a", "d"],
      ["f", "b"],
      ["b", "d"],
      ["f", "a"],
      ["d", "c"],
    ]
    expect(build_order(projects1, dependencies1)).to eq([
      "e",
      "f",
      "a",
      "b",
      "d",
      "c",
    ])
  end

  it "throws error for no valid order" do
    projects = ["a", "b", "c", "d", "e"]
    dependencies = [
      ["a", "d"],
      ["f", "b"],
      ["b", "d"],
      ["f", "a"],
      ["d", "c"],
    ]
    expect{ build_order(projects, dependencies) }.to raise_error("No valid build order exists")
  end

  it "returns correct build order for single project" do
    projects = ["a"]
    dependencies = []
    expect(build_order(projects, dependencies)).to eq(["a"])
  end

  it "returns correct build order for empty input" do
    projects = []
    dependencies = []
    expect(build_order(projects, dependencies)).to eq([])
  end
end
