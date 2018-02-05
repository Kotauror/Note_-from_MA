# Into the Web

```plain
$ brew install httpie
```
```plain
$ http <address> - gives you info about website.
```
```plain
$ http -v <address> - gives you info about website and the request at the beginning
```
Below:
## request line:
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

## response line:
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

## content:
```plain  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Top 20+ MySQL Best Practices - Nettuts+</title>
<!-- ... rest of the html ... -->
```

see https://code.tutsplus.com/tutorials/http-headers-for-dummies--net-8039 for more
