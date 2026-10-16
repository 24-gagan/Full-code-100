class Car:
    def __init__(self,model,brand):
        self.model=model
        self.brand=brand

    def display(self):
        print(f"model:{self.model} brand {self.brand}")
obj=Car("Audi","Camry")
obj.display()