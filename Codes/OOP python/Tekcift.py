
def tekcift(A):
    sonuc = 0
    i = 0
    while(i<len(A)):
        if(A[i]%2 != 0):
            sonuc -= A[i]
        else:
            sonuc += A[i]
        i+=1
    print(sonuc)


A = [1,3,2,6,9,10,12]

tekcift(A)