# Notes


Disclaimer, these are just for me, they are often taken directly from another resource, and should not be attributed to me.

### Day 1.0 - Sockets

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

### Day 2.0 - Networking

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

### Day 1.1 - Networking Cont'd

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
- Service Oriented approach
    - Uses APIs to interact with data spread across multiple applications
- Application Program Interface (API)
- twitter_api.py here
    - this code is not going to work because I don't have a twitter account
    - however, twurl.py can likely be found on the py4e site, and the discussion of contents starts around minute 6/7 in the web services G video, so flagging for potential future use

### Day 2.1 - Bash

Taking a look at bash today, feel like this is a topic that I pick up and put down a lot, but that is useful for lots of things like deploying with Heroku, Procfiles, Docker, etc. Particularly interested in environment variables, sed/awk, and in general navigating more comfortably with scripts etc.

- Variables
    - Variables in bash do not have data types
    - " Wrapping the variable name between curly brackets is not required but is considered good practice, and I would advise to use them whenever you can:"
        - Not sure why this is.
        - i.e. ${var_name} instead of $var_name
    - variable assignment with var_name="var_value"
        - double quotes and no space on either side of the equal sign
- User input
    - you can prompt user input in a bash script with the read syntax
        - as in: read var_name
        - whatever user inputs will be stored as $var_name
        - you can also replicate the prompt echo "Enter some var_name here:" with the -p flag of the read command, as in:
            read -p "Enter some var_name here:" var_name
- Comments
    - Preceded by the hash as in other common syntax
    - #! (shebang) is not a comment, affects execution
- Arguments
    - Passed after the name of the script, i.e.:
    script_name arg1 arg2 arg3 arg_etc
    - Accessed in the script with $1, $2, $3, etc.
    - $0 accesses the script itself
        - can be used to self destruct the script, i.e. include at the end:
        rm -f $0
        - can also be used if you need to access the name of the script
    - Access all arguments with $@
- Arrays
    - Hold multiple values under one name
    - You can initialize them as follows:
    my_array=("value1" "value2" "value3" "value_etc")
    - Enclose in () and separate each value with a space
    - Access elements in an array like a python list, but use curly brackets around the array name
        - i.e.:

        echo ${my_array[0]}
        
        - or:

        echo ${my_array[-1]}
        (although this doesn't actually seem to work? -1 index yields "bad array subscript")
        maybe this is a zsh problem?... worth looking into TODO
    - Access all elements in an array with ${my_array[@]}
    - Access the total number of elements in an array with ${#my_array[@]}
### Day 3 - Bash Cont'd

Bash went well yesterday, I really like this book Introduction to Bash Scripting by Bobby Iliev. It does not go super deep, but it does just get you back in the swing of bash right away. I'll probably want to look at another resource after I finish this, but feel like this is providing great context that I've always been missing when I've tried to learn bash in the past.

- Conditional Expressions
    - File Expressions (this syntax applies to variables, use simple string with no quotes to check a filename directly):
        - True if file exists

            [[ -a ${file} ]]
        - True if file exists and is block special file (TODO what is that?)

            [[ -b ${file} ]]
        - True if file exists and is a character special file (TODO what is that?)

            [[ -c ${file} ]]
        - True if file exists and is a directory

            [[ -d ${file} ]]
        - True if file exists.

            [[ -e ${file} ]]
        - True if file exists and is a regular file

            [[ -f ${file} ]]
        - True if file exists and is a symbolic link

            [[ -h ${file} ]]
        - True if file exists and is readable

            [[ -r ${file} ]]
        - True if file exists and has a size greater than zero

            [[ -s ${file} ]]
        - True if file exists and is writable

            [[ -w ${file} ]]
        - True if file exists and is executable

            [[ -x ${file} ]]
        - True if file exists and is a symbolic link

            [[ -L ${file} ]]
    - String Expressions
        - True if the shell variable varname is set (has been assigned a value) - TODO couldn't get this to work

            [[ -v ${varname} ]]
        - True if the length of the string is non-zero

            [[ -n ${string} ]]
        - True if the strings are equal

            [[ ${string1} == ${string2} ]]
        - True if the strings are not equal

            [[ ${string1} != ${string2} ]]
        - True if string1 sorts before string2

            [[ ${string1} < ${string2} ]]
        - True if string1 sorts after string2

            [[ ${string1} > ${string2} ]]
    - Arithmetic Operators
        - True if the numbers are equal

            [[ ${arg1} -eq ${arg2} ]]
        - True if the numbers are not equal

            [[ ${arg1} -ne ${arg2} ]]
        - True if arg1 is less than arg2

            [[ ${arg1} -lt ${arg2} ]]
        - True if arg1 is greater than arg2

            [[ ${arg1} -gt ${arg2} ]]
        - True if arg1 is less than or equal to arg2

            [[ ${arg1} -le ${arg2} ]]
        - True if arg1 is greater than or equal to arg2

            [[ ${arg1} -ge ${arg2} ]]
    - Possible to chain AND and OR operators

        [[ condition1 ]] && [[ condition2 ]]

        [[ condition1 ]] || [[ condition2 ]]
    - If statements syntax

            if [[ condition ]]

            then

            <commands>
            fi
    - If-else is same with else added after then commands before fi
    - Switch case statements syntax


            case $some_variable in

                pattern_1)
                    commands
                    ;;
                pattern_2| pattern_3)
                    commands
                    ;;
                *)
                    default commands
                    ;;
            esac
### Day 4 - TensorFlow

Was liking bash, but decided to brush up on TensorFlow from the basics up, feel a little rusty but hopefully have some fun with it.

- Perceptron Model
    - Basic Unit based off of the Biological Neuron
        - Accepts a signal through Dendrites
        - Does some calculation in the Nucleus
        - Outputs through an Axon (typically moves forward through another Neuron)
    - Math implementation of a single perceptron: "Neuron" is some function f(X) that accepts inputs X and returns output y
        - f(X) is the activation function, for example, this is a linear function for a single perceptron in a network:
            - Inputs are weighted, weights will be adjusted to optimize cost function for f(X) = y
            - Inputs are likewise biased to account for zero inputs.
            - Weighted inputs thus must overcome the bias value to have any effect on y
    - Multi-Layer Perceptron Model:
        - Connected layers of perceptrons
        - Outputs of one perceptron are directly fed as inputs to another perceptron(s) in the next layer
        - First layer is input layer
        - Last layer is the output layer
        - Layers in between input and output are "hidden layers"
            - Difficulty to interpret increases with interconnectivity and distance from input/output layers
        - Neural Network becomes "deep neural network" when there are 2 or more hidden layers
        - Width of a network is how many neurons in a layer
        - Depth is how many layers in total
        - Zhou Lu and also Boris Hanin proved that Neural Networks can approximate any convex continuous function
        
        


    
        
        
        





        



        







