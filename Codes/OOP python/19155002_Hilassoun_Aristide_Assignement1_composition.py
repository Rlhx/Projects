#composition

class Employee:
    def __init__(self, name, surname):
        self.name = name
        self.surname = surname

    def Salary(self, amount, rate_increase):
        self.amount = amount
        self.rate_increase = rate_increase
        return self.amount * (100+ self.rate_increase)/100
        
    
    def check_salary(self):
        print("Mr "+self.name+" "+self.surname+" has a salary of "+ str(self.Salary(self.amount, self.rate_increase))+" TL")
        
obj_employee = Employee("Roland", "SANOU")
obj_employee.Salary(5000, 5)
obj_employee.check_salary()



