class Parent():
    def parent1(self):
        print("Parent 1")
class Child(Parent):
    def parent1(self):
        print(("Child"))
p=Parent()
c=Child()
p.parent1()
c.parent1()