# Notes


Disclaimer, these are just for me, they are often taken directly from another resource, and should not be attributed to me.

### Day 1. Sockets

- What is a socket?
    - A socket is an internal endpoint for sending and receiving data.
    - A socket is like an outlet, it connects the "grid" to your house. A network socket allows you to send and receive data.

- Socket module in standard libraries.
    - Allows implementing sockets using different protocols
    - 

- AFI net
    - AFI net used to specify protocol used for communication
        - Either IPV4/6

- TCP Transmission Control Protocol

- Socket Type
    - Sockstream (TCP/connection oriented protocols) or sock degram (conectionless)

### Day 2. Networking

- Transport Control Protocol (TCP)
    - Built on top of IP (Internet Protocol)
    - Assumes IP might lose some data, stores and retransmits data if it seems to be lost
    - May be a more direct connection? Like a phone call from computer a to computer b?

- TCP Port Numbers
    - Like an extension on a phone
    - A port is an application-specific or process-specific software communications endpoint
    - Allows multiple networked apps to exist on the same server
    - List of well-known TCP port numbers https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers

- Common TCP Ports
    - Telnet (23) - Login
    - SSH (22) - Secure Login
    - HTTP (80)
    - HTTPS (443) - Secure
    - SMTP (25) - Mail
    - IMAP (143/220/993) - Mail Retrieval
    - POP (109/110) - Mail Retrieval
    - DNS (53) - Domain Name
    - FTP (21) - File Transfer

Sometimes we see the port number in the URL if the web server is running on a "non-standard" port. (ie. xyz.org: **8080**/rest-of-url)

- Application Protocol
    - Since TCP (and Python) gives us a reliable socket, what do we want to do with the socket? What problem do we want to solve?
    - Application Protocols
        - Mail
        - World Wide Web

- HTTP - Hypertext Transfer Protocol
    - The dominant applciation Layer Protocol on the Internet
    - Invented for the Web to Retrieve HTML, Images, Documents, etc.
    - Extended to be data in addition to documents - RSS, Web Services, etc. Basic Concept - Make a Connection - Request a document - Retrieve the Document - Close the Connection





