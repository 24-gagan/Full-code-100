from abc import abstractmethod

class Shape():
    def area(self):
        pass

class Rectangle(Shape):
    def __init__(self,length,width):
        self.length=length
        self.width=width
    def area(self):
        print(f"Length {self.length} Width {self.width} ")

rect=Rectangle(5,10)
print(rect.area())