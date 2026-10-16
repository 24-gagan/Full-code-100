class Animal():
    def speak(self):
        print("Animal make sound")
class Dog(Animal):
    def speak(self):
        print("Dog barks")
dog=Dog()
anim=Animal()
print(dog.speak)
print(anim.speak())