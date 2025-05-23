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

class Project
  attr_reader :name, :depends_on, :required_for

  def initialize(name)
    @name = name
    @depends_on = Set.new
    @required_for = Set.new
  end
end
# build_order(projects: string[], dependencies: string[][]) => string[] | string
def build_order(projects, dependencies)
  list = {}
  projects.each { |p| list[p] = Project.new(p) }

  dependencies.each do |a, b|
    raise "No valid build order exists" unless list[a] && list[b]
    list[a].required_for << list[b]
    list[b].depends_on << list[a]
  end

  order = []
  order_size = nil
  while order_size != order.size
    order_size = order.size
    list.each do |key, project|
      if project.depends_on.empty?
        order << project.name
        project.required_for.each do |other|
          other.depends_on.delete(project)
        end
        list.delete(key)
      end
    end
  end
  raise "No valid build order exists" unless list.empty?
  order
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

  it "throws error for no valid order (non existing dependencies)" do
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

  it "throws error for no valid order (circular dependencies)" do
    projects = ["a", "b", "c", "d", "e"]
    dependencies = [
      ["a", "d"],
      ["d", "a"],
      ["b", "d"],
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
