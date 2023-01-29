# Function to find HCF the Using Euclidian algorithm
def compute_hcf(x, y):
   while(y):
       x, y = y, x % y
   return x


a  = input("Enter the value of x: ")
b = input("Enter the value of y: ")
hcf = compute_hcf(int(a), int(b))
print("The GCD of "+a+" and "+b+" is", hcf)

