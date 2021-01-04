import urllib.request, urllib.parse, urllib.error

# reading network resource -- a text file
fhand = urllib.request.urlopen('http://data.pr4e.org/romeo.txt')
for line in fhand:
    print(line.decode().strip())

# reading web pages
fhandpage = urllib.request.urlopen('http://www.dr-chuck.com/page1.htm')
for line in fhandpage:
    print(line.decode().strip())