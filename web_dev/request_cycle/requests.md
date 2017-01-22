What are some common HTTP status codes?
200 OK (this one means that the request was ok)
400 Bad Request (The server couldn't understand the request because of an error of syntax)
401 Unauthorized (When the request needs an authentication that is missing in the code)
404 Not Found (actually, the most famous)
500 Internal Server Error (The server encountered an error that didn't allow him to conclude the request)
503 Service Unavailable (When there is a problem with the server)
550 Permission denied (When the user doesn't have the permission to perform an action)


What is the difference between a GET request and a POST request? When might each be used?
The GET request is used to request informations from the client to the server and the POST request is the oppositte, it sends the informations requested from the server to the client. The biggest difference is about the stored information: while the GET method can store the historic, the POST method can't.


3.Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
The cookies are a pack of information about the user, to identify him and his historyc at the website. Each website decide which informations he is gonna store and/or retrieve about the users when he makes an HTTP request.