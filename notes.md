# Notes


Disclaimer, these are just for me, they are often taken directly from another resource, and should not be attributed to me.

### Day 1.0 Sockets

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

### Day 2.0 Networking

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

- What is a Protocol
    - A set of rules that all parties follow so we can predict each other's behavior

Sample web address includes for example http:// (the protocol) www. web-address .com (the host to retrieve from) /somedoc.format (the document to retrieve)

When you click a link in a browser (which is a process/application running on your computer), the browser sends a GET request to port on a webserver. The web server sends back a response, which the browser then parses/renders for you to view.

### Day 1.1 Networking Cont'd

Slipped and didn't hit my goal yesterday. Since it's only been a couple days, I'm going to start from scratch on the day count, and pick up where I left off on the content.

- Characters and Strings
    - ASCII (American Standard Code for Information Interchange)
        - Latin character set for North American language
        - 128 possible values
        - 8 bit values (1 byte)
        - Efficient, but doesn't handle more complex characters
        - The ord() function in python tells us the numeric value of a simple ASCII character
    - Unicode
        - Handles far more characters (billions)
        - UTF-32 is 4 bytes per character, this is too large to send over the web in practice
        - Ditto UTF-16 (Two bytes/character)
        - UTF-8 is recommended practice for encoding data to be exchanged between systems
        - Upwards compatible with ASCII
        - Dynamic length (1-4 bytes)
    - Strings in Python
        - All strings in Python3 are unicode (internally)
        - Python3 has a new class called "bytes"
            - e.g. x = b'abc' (like an f string sort of, or a raw string, but a bytes)
        - When we talk to a network resource using sockets, or talk to a database, we have to encode and decode data (Usually to UTF-8)
            - hence some_data_received.decode()
            - ditto sending our GET request as 'GET some_string_for_rest_of_stuff'.encode()
            - encode/decode basically alias utf_(to/from)_bytes
- urllib
    - does all the work of sockets for us
- urllib_browser.py here
- Web Scraping
    - This guy has an interesting take on what this is fundamentally that I hadn't really thought about before: web scraping is when a program/script pretends to be a browser and retrieves web pages, looks at those pages, extracts information and looks at more pages
- scraper.py here
- Web Services
    - Two commonly used formats to represent data between applications and across networks
        - XML
        - JSON
- XML Basics
    - eXtensible Markup Language
    - helps information systems share structured data
    - tags indicate beginning and ending of elements
    - attributes are Keyword/value pairs on the opening tag of XML
    - serialize/deserialize convert to/from common format that can be stored or transmitted between systems in a programming language-independent manner
    - start tag, end tag as in html, but can name the tag anything like a dictionary object. Additionally, there can be attribute within the tag (key="value"), must retain double quotes, before close of the bracket, and text content between start and end tags. Self closing tag does not include closing tags, just a / before end bracket of start tag, and all info contained in attributes.
    - Can have multiple attributes but only one text node per tag
    - White space does not matter, indent only to be readable
    - "Elements" (or Nodes)
        - simple = tag and some data
        - complex = tag with additional tags
        - can be visualized as a tree with parent child relationships
        - also works as a path: a/b/c etc.
- XML Schema
    - Description of the legal format of an XML document
    - Expressed in terms of constraints on the structure and content of documents
    - Often used to specify a "contract" between systems - "My system will only accept XML that conforms to this particular Schema"
    - If a particular piece of XML meets the spec. of the Schema, it is said to "validate"
- XSD Schema:
    - xml schema from W3C
    - xs:element = simple element
    - xs:sequence = announcing that several elements will follow (?)
    - xs:complexType = complex element
    - can have constraints (i.e. minOccurs="1", etc.)
    - each can be typed as in type="xs:string"
- xml.py here.
    - uses xml.etree.ElementTree in python
    - methods include making a tree from string of xml content, findall, find, get, etc.
- 


        



        







