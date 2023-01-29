def gcd(x, y):
    while y > 0:
        x, y = y, x % y
    return x


def xgcd(a, b):
    a, b = max(a, b), min(a, b) #to a we assign the max from the 2 numbers then to b the min

    #we have 4 differents lists to store differents types of results
    q = [-1, -1] #here we add the value of the 2 last added value on r list
    r = [a, b] #here we add the value of before last added value mod last added value
    s = [1, 0]#store the first value of each equation of type ri = si*ri-2 - ti*ri-1
    t = [0, 1]#store the second value

    while r[-1] > 0:
        q.append(r[-2] // r[-1])
        print(q)
        r.append(r[-2] % r[-1])
        print(r)
        s.append(s[-2] - q[-1] * s[-1])
        print(s)
        t.append(t[-2] - q[-1] * t[-1])
        print(t)

    return [s[-2], t[-2]]

a =  int(input("Enter a: "))
b =  int(input("Enter b: "))

print("For this equation "+str(gcd(a,b))+" = ("+str(a)+")a + ("+str(b)+")b")
print("x = "+str(xgcd(a, b)[0])+" and y = "+str(xgcd(a,b)[1]))
