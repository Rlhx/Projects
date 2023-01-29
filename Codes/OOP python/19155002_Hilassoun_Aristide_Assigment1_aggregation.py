#agrregation
class Salary:
    rate_increase = 0.05 #rate increase set to 5%
    def __init__(self, amount):
        self.amount = amount
    def real_salary(self): #calculation of the real amount of salary after rate increase
        return self.amount * 1.05

class Employee:
    def __init__(self, name, surname, pay):
        self.name = name
        self.pay = pay
        self.surname = surname
        self.salary_emp = Salary(self.pay)
    def check_salary(self):
        print("Mr "+self.name+" "+self.surname+" has a salary of "+ str(self.salary_emp.real_salary())+" TL")
        
obj_employee = Employee("Roland", "SANOU", 5000)
obj_employee.check_salary()



