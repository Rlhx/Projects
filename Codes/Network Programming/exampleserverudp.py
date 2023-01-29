#code author: Hilassoun Aristide Roland SANOU, 16 april 2022
#server part of a chat based on udp (ThreadingMixIn and UDPServer classes)

import socketserver, threading, time

clients_address = [] #creating a list of address from clients

class ThreadedUDPRequestHandler(socketserver.BaseRequestHandler):
    def handle(self):
        data = self.request[0].strip().decode('utf-8').split() #decoding the receiving message 
        socket = self.request[1] #received socket from client
        nickname = data.pop(0) #nickname extraction from data sent by client

        
        if self.client_address not in clients_address: #adding unknowns adress in the list
            clients_address.append(self.client_address)
            print("\nClient{}  {} {}\n".format(len(clients_address), nickname, self.client_address))
    

        data = " ".join(data)
        print("{} wrote: {} \n".format(nickname, data)) #printing message from client in the server
        
        
        text = nickname+" "+data #send data with the nickname

        
        if len(clients_address) !=0: #broadcasting the message to all clients
            for client in clients_address:
                if client != self.client_address:
                    socket.sendto(text.encode("utf-8"), client)
        


class ThreadedUDPServer(socketserver.ThreadingMixIn, socketserver.UDPServer):
    pass

#main function, server run in forever mode
if __name__ == "__main__":
    HOST, PORT = "localhost", 8888

    server = ThreadedUDPServer((HOST, PORT), ThreadedUDPRequestHandler)

    with server:
        ip, port = server.server_address
        server_thread = threading.Thread(target=server.serve_forever)
        server_thread.daemon = True
        
        
        try:
            server_thread.start()
            print("Server started at {} port {}".format(HOST, PORT))
            while True: time.sleep(10)      
        except(KeyboardInterrupt, SystemExit):
            server.shutdown()
            server.server_close()
            exit()