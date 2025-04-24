# 6. *Animal Shelter*:

# An animal shelter, which holds only dogs and cats, operates on a strictly
# "first in, first out" basis. People must adopt either the "oldest"
# (based on arrival time) of all animals at the shelter,
# or they can select whether they would prefer a dog or a cat
# (and will receive the oldest animal of that type).
# They cannot select which specific animal they would like.
# Create the data structures to maintain this system and implement operations
# such as enqueue, dequeue_any, dequeue_dog, and dequeue_cat.
# You may use the built-in LinkedList data structure.

# AnimalType = "dog" | "cat"

class Animal
  attr_accessor :type
  def initialize(type)
    @type = type
  end
end

class AnimalShelter
  def enqueue(type)
    # TODO: implement function
  end

  def dequeue_any
    # TODO: implement function
  end

  def dequeue_dog
    # TODO: implement function
  end

  def dequeue_cat
    # TODO: implement function
  end
end


RSpec.describe "" do
  it "enqueue and dequeue elements from queue" do
    shelter = AnimalShelter.new

    # Enqueue some animals
    shelter.enqueue("dog")
    shelter.enqueue("cat")
    shelter.enqueue("dog")

    # Dequeue any animal
    expect(shelter.dequeue_any.type).to eq("dog") # Oldest animal is a dog
    expect(shelter.dequeue_any.type).to eq("cat") # Oldest animal is a cat

    # Enqueue more animals
    shelter.enqueue("cat")
    shelter.enqueue("dog")

    # Dequeue a dog
    expect(shelter.dequeue_dog.type).to eq("dog") # Oldest dog

    # Enqueue another dog
    shelter.enqueue("dog")

    # Dequeue a cat
    expect(shelter.dequeue_cat.type).to eq("cat") # Oldest cat
  end

  it "dequeue methods return undefined when shelter is empty" do
    shelter = AnimalShelter.new

    expect(shelter.dequeue_any).to be_nil
    expect(shelter.dequeue_dog).to be_nil
    expect(shelter.dequeue_cat).to be_nil
  end
end
