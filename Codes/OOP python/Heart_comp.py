#Class Heart with 1 function
#one variable
class Heart:
    def __init__(self, heartValves):
        self.heartValves = heartValves
        
    def display(self):
        return self.heartValves
#Class Person with 1 function
#4 variables, one heart composition variable    
class Person:
    def __init__(self, fname, lname, address, heartValves):
        self.fname = fname
        self.lname = lname
        self.address = address
        self.heartValves = heartValves
        self.heartObject = Heart(self.heartValves)   # Composition
        
    def display(self):
        print("First Name: ", self.fname)
        print("Last Name: ", self.lname)
        print("Address: ", self.address)
        print("No of Heart Valves: ", self.heartObject.display())

#p is a person object 
p = Person("Roland", "Sanou", "876 Xtj Ln", 8)
p.display()