#/bin/bash
clear


echo "What server are we scanning today?"
read server
#creates the variable server

echo""
#creates new line

echo "Let us check if port 80 is open" 
echo""
nc -zv $server 80
echo""
echo"Port 80 is http"
echo""

echo "Let us check if port 23 is open"
echo""
nc -zv $server 23
echo ""
echo"Port 23 is Telnet"

echo""
echo "Let us check if port 25 is open"
echo""
nc -zv $server 22
echo""
echo "Port 22 is SSH"
echo"" 

echo" What is the port we want to grab the banner for?"
read port
echo ""

nc -v -n  $server $port
#by John Fawcett
