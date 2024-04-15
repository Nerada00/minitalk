
# Minitalk

This project involves developing a [client-server](https://fr.wikipedia.org/wiki/Client-serveur) communication program in C.

The server must be launched first and display its PID upon startup.
The client takes two parameters:
The PID of the server.
A string of characters to transmit
Multiple clients can be opened and used simultaneously.

## Installation

```bash
git clone https://github.com/Nerada00/minitalk.git
cd minitalk
make
```

## Utilisation

Start the server:
```bash
./server
```

Launch the client with the server's PID and the message to transmit:
```bash
./client [server_PID] "Hello, World!"
```

## Authors

- [@Nerada00](https://www.github.com/Nerada00)
