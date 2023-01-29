#this is an implementation of vernam cipher called OneTime Pad Algo

import string

def vernam_encrypt(text, key):
    index = 0
    cipher = ''
    for i in text:
       if i in string.ascii_lowercase:
            offset = ord(key[index]) - ord('a')
            encrypted_c = chr((ord(i) - ord('a') + offset) % 26 + ord('a'))
            cipher = cipher + encrypted_c
            index = index + 1 
       else:
           cipher = cipher + i

    return cipher

def vernam_decrypt(cipher, key):
    index = 0
    plain = ''
    for i in cipher:
       if i in string.ascii_lowercase:
            offset = ord(key[index]) - ord('a')
            positive_offset = 26 - offset #positive offset from key
            
            decrypted_c = chr((ord(i) - ord('a') + positive_offset) % 26 + ord('a'))
            
            plain = plain + decrypted_c
            index = index + 1 
       else:
           plain = plain + i

    return plain

if __name__ =="__main__":
   
    while(True):
        print("1-Encryption\n2-Decryption\n3-Exit")    
        a = input(": ")
        #-encryption, len of key = len text
        if a == "1":
            text = input("Enter the message to encrypt: ").strip()
            key = input("Enter the key: ")
            
            if(len(key)!=len(text)): #key must have the same lenght as message
                print("\nInvalid Key!\n")
                exit(None)
            else:
                result = vernam_encrypt(text, key)
                print(result+"\n")
        elif a =="2":
            text = input("Enter the message to decrypt: ").strip()
            key = input("Enter the key: ")
            if(len(key)!=len(text)):
                print("\nInvalid Key!\n")
                exit(None)
            else:
                result= vernam_decrypt(text, key)
                print(result+"\n")
        else:
            exit()