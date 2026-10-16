class Grandfather():
    def grandfather_method(self):
        print("This is grandfather method")
class Parent(Grandfather):
    def parent_method(self):
        print("This is parent method")
class Child(Parent):
    def child_method(self):
        print("This is child method")
obj=Child()
obj.grandfather_method()
obj.parent_method()
obj.child_method()