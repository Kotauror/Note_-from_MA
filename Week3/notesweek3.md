# Into the Web

## HTTP HEADERS (ex. 2)

```plain
$ brew install httpie
```
```plain
$ http <address> - gives you info about website.
```
```plain
$ http -v <address> - gives you info about website and the request at the beginning
```
### request line:
```plain
GET /tutorials/other/top-20-mysql-best-practices/ HTTP/1.1
Host: net.tutsplus.com
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5 (.NET CLR 3.5.30729)
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8
Accept-Language: en-us,en;q=0.5
Accept-Encoding: gzip,deflate
Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.7
Keep-Alive: 300
Connection: keep-alive
Cookie: PHPSESSID=r2t5uvjq435r4q7ib3vtdjq120
Pragma: no-cache
Cache-Control: no-cache
```

first line of GET:
The "method" indicates what kind of request this is. Most common methods are GET, POST and HEAD.
The "path" is generally the part of the url that comes after the host (domain). For example, when requesting "http://net.tutsplus.com/tutorials/other/top-20-mysql-best-practices/" , the path portion is "/tutorials/other/top-20-mysql-best-practices/".
The "protocol" part contains "HTTP" and the version, which is usually 1.1 in modern browsers.

### response line:
```plain  
HTTP/1.x 200 OK
Transfer-Encoding: chunked
Date: Sat, 28 Nov 2009 04:36:25 GMT
Server: LiteSpeed
Connection: close
X-Powered-By: W3 Total Cache/0.8
Pragma: public
Expires: Sat, 28 Nov 2009 05:36:25 GMT
Etag: "pub1259380237;gz"
Cache-Control: max-age=3600, public
Content-Type: text/html; charset=UTF-8
Last-Modified: Sat, 28 Nov 2009 03:50:37 GMT
X-Pingback: http://net.tutsplus.com/xmlrpc.php
Content-Encoding: gzip
Vary: Accept-Encoding, Cookie, User-Agent
```
first line of response:
The first piece of data is the protocol. This is again usually HTTP/1.x or HTTP/1.1 on modern servers.

The rest of the response contains headers just like the HTTP request. These values can contain information about the server software, when the page/file was last modified, the mime type etc...

Again, most of those headers are actually optional.

HTTP Status Codes
200's are used for successful requests.
300's are for redirections.
400's are used if there was a problem with the request.
500's are used if there was a problem with the server.

```plain
2xx: Successful
This tells the client that the request was successfully processed. The most common code is 200 OK. For a GET request, the server sends the resource in the message body. There are other less frequently used codes:

202 Accepted: the request was accepted but may not include the resource in the response. This is useful for async processing on the server side. The server may choose to send information for monitoring.
204 No Content: there is no message body in the response.
205 Reset Content: indicates to the client to reset its document view.
206 Partial Content: indicates that the response only contains partial content. Additional headers indicate the exact range and content expiration information.

3xx: Redirection
This requires the client to take additional action. The most common use-case is to jump to a different URL in order to fetch the resource.

301 Moved Permanently: the resource is now located at a new URL.
303 See Other: the resource is temporarily located at a new URL. The Location response header contains the temporary URL.
304 Not Modified: the server has determined that the resource has not changed and the client should use its cached copy. This relies on the fact that the client is sending ETag (Enttity Tag) information that is a hash of the content. The server compares this with its own computed ETag to check for modifications.

4xx: Client Error
These codes are used when the server thinks that the client is at fault, either by requesting an invalid resource or making a bad request. The most popular code in this class is 404 Not Found, which I think everyone will identify with. 404 indicates that the resource is invalid and does not exist on the server. The other codes in this class include:

400 Bad Request: the request was malformed.
401 Unauthorized: request requires authentication. The client can repeat the request with the Authorization header. If the client already included the Authorization header, then the credentials were wrong.
403 Forbidden: server has denied access to the resource.
405 Method Not Allowed: invalid HTTP verb used in the request line, or the server does not support that verb.
409 Conflict: the server could not complete the request because the client is trying to modify a resource that is newer than the client's timestamp. Conflicts arise mostly for PUT requests during collaborative edits on a resource.

5xx: Server Error
This class of codes are used to indicate a server failure while processing the request. The most commonly used error code is 500 Internal Server Error. The others in this class are:

501 Not Implemented: the server does not yet support the requested functionality.
503 Service Unavailable: this could happen if an internal system on the server has failed or the server is overloaded. Typically, the server won't even respond and the request will timeout.

```
### content:
```plain  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Top 20+ MySQL Best Practices - Nettuts+</title>
<!-- ... rest of the html ... -->
```

see https://code.tutsplus.com/tutorials/http-headers-for-dummies--net-8039 for more


## HTTP PARAMETERS (ex.3)

http://www.example.com/home?name=Bob&age=21.
```plain
http://www.example.com/home
```
address
```plain
?
```
separator
```plain  
?name=Bob&age=21
```
the query string  
* It contains two parameters, "name=Bob" and "age=21".
The two parameters are separated by an ampersand ("&").
The keys are "name", and "age". They have the values "Bob" and "21" respectively.

A MORE COMPLICATED EXAMPLE :)

```plain
https://video.googleco.uk:80/videoplay?docid=-37583789582905837825792&hl=en#00h02m30s
```
`https://` - protocol
`video` - subdomain
`google.co.uk` - domain
`:80` - port ()
*By default HTTP Server runs on port number `80`. But if you are running a server on any other port number then it can be porvided as follows, assuming server is running on port `8080`. For https (secure) requests port `443` is used.*
`videoplay` - path: typically refers to a file or directory on the web server
`?` - separator - query
*A query is commonly found in the URL of dynamic pages (ones which are generated from database or user-generated content) and is represented by a question mark followed by one or more parameters. The query directly follows the domain name, path or port number.*
*For example, have a look at this URL which was generated by Google when doing a search for the word URL:* http://www.google.co.uk/search?q=url&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:en-GB:official&client=firefox-a `?q=url&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:en-GB:official&client=firefox-a` - query part

`docid=-37583789582905837825792&hl=en` - two pairs of key&value parameters, separated by &. The parameters follow the question mark and are separated by an ampersand (&) character so they can be understood individually and used to display content on that page. 
`#00h02m30s` - specific fragment

## HTTP VERBS (ex. 4)

These request verbs are:

```plain
GET: fetch an existing resource. The URL contains all the necessary information the server needs to locate and return the resource.
POST: create a new resource. POST requests usually carry a payload that specifies the data for the new resource.
PUT: update an existing resource. The payload may contain the updated data for the resource.
DELETE: delete an existing resource.
The above four verbs are the most popular, and most tools and frameworks explicitly expose these request verbs. PUT and DELETE are sometimes considered specialized versions of the POST verb, and they may be packaged as POST requests with the payload containing the exact action: create, update or delete.
```
There are some lesser used verbs that HTTP also supports:
```plain
HEAD: this is similar to GET, but without the message body. It's used to retrieve the server headers for a particular resource, generally to check if the resource has changed, via timestamps.
TRACE: used to retrieve the hops that a request takes to round trip from the server. Each intermediate proxy or gateway would inject its IP or DNS name into the Via header field. This can be used for diagnostic purposes.
OPTIONS: used to retrieve the server capabilities. On the client-side, it can be used to modify the request based on what the server can support.
```
