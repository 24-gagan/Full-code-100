class Car:
    def __init__(self,brand,model):
        self.brand=brand
        self.model=model
    def display(self):
        print(f"brand {self.brand} model {self.model} ")
car1=Car("Toyota","camry")
car2=Car('Honda','Civic')

car1.display()
car2.display()
