ip_address = {"Host": "192.168.0.2", "username": "PNB", "password": 12345}
project_name = "Idcevo"
APC_Ip = "192.168.0.1"
money = 2000


# ----------------------------
# 1. Test IP Function
# ----------------------------
def test_ip(ip):
    if ip == "192.168.0.1":
        print("Connection successful")
    else:
        print("Connection failed")


test_ip(APC_Ip)


# ----------------------------
# 2. Output1 Class (Withdraw)
# ----------------------------
class Output1:
    def __init__(self, money):
        self.money = money

    def withdraw(self):
        return self.money

    def __str__(self):
        return f"Withdraw Amount: {self.money}"


obj = Output1(2000)
print(obj)                # prints custom message
print(obj.withdraw())     # return money only


# ----------------------------
# 3. Bank Class
# ----------------------------
class Bank:
    def __init__(self, balance):
        self.__balance = balance

    def amount_get(self, amount):
        self.__balance += amount

    def get_money(self):
        return self.__balance


b = Bank(2000)
b.amount_get(500)
print(b.get_money())      # 2500


# ----------------------------
# 4. Password Check
# ----------------------------
def correct_password(password):
    if password == "username":
        print("Password is correct")
    else:
        print("Password is not correct")


correct_password("username")


# ----------------------------
# 5. PIN Check
# ----------------------------
def correct_pin(pin):
    if pin == "1234":
        print("PIN is correct")
    else:
        print("PIN is not correct")


correct_pin("1234")


# ----------------------------
# 6. Change PIN
# ----------------------------
def change_pin():
    pin1 = input("Enter new PIN: ")
    print(f"Your new PIN is: {pin1}")


# Uncomment this if you want user input
# change_pin()
