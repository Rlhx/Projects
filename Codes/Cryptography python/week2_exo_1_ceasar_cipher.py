import string
from time import sleep

alphabet = string.ascii_lowercase # "abcdefghijklmnopqrstuvwxyz"

def encrypt():
    print("Welcome to Caesar Cipher Encryption.\n")
    plain_message = input("Enter the message you would like to encrypt: ").strip()
    
    key = int(input("Enter key to decrypt: "))
    
    encrypted_message = ""

    for i in plain_message:

        if i in alphabet:
            position = alphabet.find(i) #return the position of the character in alphabet 
            new_position = (position + key) % 26
            new_character = alphabet[new_position] #new position of char
            encrypted_message += new_character
        else:
            encrypted_message += i

    print("\nEncrypting your message...\n")
    sleep(2) # give an appearance of doing something complicated
    print("Stand by, almost finished...\n")
    sleep(2) # more of the same
    print("Your encrypted message is:\n")
    print(encrypted_message+"\n")


def decrypt():
    
    print("Welcome to Caesar Cipher Decryption.\n")
    encrypted_message = input("Enter the message you would like to decrypt: ").strip()
    
    key = int(input("Enter key to decrypt: "))
    
    decrypted_message = ""

    for i in encrypted_message:

        if i in alphabet:
            position = alphabet.find(i) #return the position of the character in alphabet 
            new_position = (position - key) % 26
            new_character = alphabet[new_position] #new position of char
            decrypted_message += new_character
        else:
            decrypted_message += i

    print("\nDecrypting your message...\n")
    sleep(2) # give an appearance of doing something complicated
    print("Stand by, almost finished...\n")
    sleep(2) # more of the same
    print("Your decrypted message is:\n")
    print(decrypted_message+"\n")


if __name__ =="__main__":
   
    while(True):
        print("1-Encryption\n2-Decryption\n3-Exit")
        a = input(": ")
        if a == "1":
            encrypt()
        elif a =="2":
            decrypt()
        else:
            exit()