abstract class Animal {
  
  String move();
  
  String speak();
  
}

class Eagle extends Animal {
  
  @override
  String move() {
    return "Fly";
  }
  
  @override
  String speak() {
    return "scream";
  }
  
}

class Dog extends Animal {
  
  @override
  String move() {
    return "walking";
  }
  
  @override
  String speak() {
    return "barks";
  }
  
}

enum Example { EAGLE, DOG }

class AnimalFactory {
  
  Animal getAnimal(Example example) {
    if(example == Example.EAGLE)
      return new Eagle();
    if(example == Example.DOG)
      return new Dog();
    return null;
  }
  
}

void main() {
  AnimalFactory animalFactory = new AnimalFactory();
  
  Animal animal = animalFactory.getAnimal(Example.DOG);
  print("On DOG: ");
  print(animal.speak());
  print(animal.move());
  
  animal = animalFactory.getAnimal(Example.EAGLE);
  print("On EAGLE: ");
  print(animal.speak());
  print(animal.move());
  
}

