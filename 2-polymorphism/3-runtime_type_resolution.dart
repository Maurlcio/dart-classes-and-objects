abstract class Animal {
  makeSound();
}

class Dog implements Animal{
  @override
  makeSound() {
    print("Woof!");
  }
}

class Cat implements Animal{
  @override
  makeSound(){
    print("Meow!");
    print("```****");
  }
}

void main() {
  List<Animal> pets = [Dog(), Cat()];

  for (var pet in pets) {
    print(pet.runtimeType);
    pet.makeSound();
    if (pet is Dog) {
      print("It's a dog");
    }
  }
}