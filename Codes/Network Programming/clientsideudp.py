#code author: Hilassoun Aristide Roland SANOU, 16 april 2022
#client part of a chat based on udp (ThreadingMixIn and UDPServer classes)

from random import randint
import socket
import threading


HOST, PORT = "localhost", 8888 #server adress and port

#receive data function
def rec(udp_socket):
    while True:
        (received, adrr) = udp_socket.recvfrom(1024)#receiving data from server
        received = received.decode('utf-8').split()
        nickname = received.pop(0) #taking back the nickname of the sender from server

        received = " ".join(received)
        
        if (received):
            print("\n{} : {}".format(nickname, received))

#send data function
def send_msg(udp_socket):

    nickname = input("Nickname: ") #taking the nickname when sending 
    while True:
        data = input(f"{nickname} > ")
        data = nickname+" "+data #add nickname at the beginnig of the sending data
        udp_socket.sendto(data.encode(), (HOST, PORT))#sending data
        
#main thread       
def main():
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM) #socket initialisation
    s.bind(("", randint(0000,9999))) #for any new connection bind to a different port to avoid OSErro

    print ('Conneted! Let\'s chat! \n')

    thread_receiv = threading.Thread(target=rec, args= (s,))#second thread for receiving and display
    thread_receiv.start()
    send_msg(s)


main()
   








