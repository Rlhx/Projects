import string

def vigenere_encrypt(text, key):
    index = 0
    cipher = ''
    for i in text:
       if i in string.ascii_lowercase:
            offset = ord(key[index]) - ord('a')
            encrypted_c = chr((ord(i) - ord('a') + offset) % 26 + ord('a'))
            cipher = cipher + encrypted_c
            index = (index + 1) % len(key) #generation of key for the same lenght of plaintext
       else:
           cipher = cipher + i

    return cipher

def vigenere_decrypt(cipher, key):
    index = 0
    plain = ''
    for i in cipher:
       if i in string.ascii_lowercase:
            offset = ord(key[index]) - ord('a')
            positive_offset = 26 - offset #positive offset from key
            
            decrypted_c = chr((ord(i) - ord('a') + positive_offset) % 26 + ord('a'))
            
            plain = plain + decrypted_c
            index = (index + 1) % len(key) #generation of key for the same lenght of plaintext, for each iteration we are adding a new letter of the key
       else:
           plain = plain + i

    return plain

if __name__ =="__main__":
   
    while(True):
        print("1-Encryption\n2-Decryption\n3-Exit")
        a = input(": ")
        if a == "1":
            text = input("Enter the message to encrypt: ").strip()
            key = input("Enter the key: ")
            result = vigenere_encrypt(text, key)
            print(result+"\n")
        elif a =="2":
            text = input("Enter the message to decrypt: ").strip()
            key = input("Enter the key: ")
            result= vigenere_decrypt(text, key)
            print(result+"\n")
        else:
            exit()