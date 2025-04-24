// 6. *Animal Shelter*:

// An animal shelter, which holds only dogs and cats, operates on a strictly
// "first in, first out" basis. People must adopt either the "oldest"
// (based on arrival time) of all animals at the shelter,
// or they can select whether they would prefer a dog or a cat
// (and will receive the oldest animal of that type).
// They cannot select which specific animal they would like.
// Create the data structures to maintain this system and implement operations
// such as enqueue, dequeueAny, dequeueDog, and dequeueCat.
// You may use the built-in LinkedList data structure.

export type AnimalType = "dog" | "cat";

export class Animal {
  type: AnimalType;
  constructor(type: AnimalType) {
    this.type = type;
  }
}

export default class AnimalShelter {

    constructor() {
      // TODO: implement function
    }

    enqueue(type: AnimalType): void {
      // TODO: implement function
    }

    dequeueAny(): Animal | undefined {
      // TODO: implement function
      return undefined;
    }

    dequeueDog(): Animal | undefined {
      // TODO: implement function
      return undefined;
    }

    dequeueCat(): Animal | undefined {
      // TODO: implement function
      return undefined;
    }
}


describe("AnimalShelter", () => {
  test("enqueue and dequeue elements from queue", () => {
    const shelter = new AnimalShelter();

    // Enqueue some animals
    shelter.enqueue("dog");
    shelter.enqueue("cat");
    shelter.enqueue("dog");

    // Dequeue any animal
    expect(shelter.dequeueAny()?.type).toBe("dog"); // Oldest animal is a dog
    expect(shelter.dequeueAny()?.type).toBe("cat"); // Oldest animal is a cat

    // Enqueue more animals
    shelter.enqueue("cat");
    shelter.enqueue("dog");

    // Dequeue a dog
    expect(shelter.dequeueDog()?.type).toBe("dog"); // Oldest dog

    // Enqueue another dog
    shelter.enqueue("dog");

    // Dequeue a cat
    expect(shelter.dequeueCat()?.type).toBe("cat"); // Oldest cat
  });

  test("dequeue methods return undefined when shelter is empty", () => {
    const shelter = new AnimalShelter();

    expect(shelter.dequeueAny()).toBeUndefined();
    expect(shelter.dequeueDog()).toBeUndefined();
    expect(shelter.dequeueCat()).toBeUndefined();
  });
});
