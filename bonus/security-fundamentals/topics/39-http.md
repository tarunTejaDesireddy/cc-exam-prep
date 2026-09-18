# 🌐 HTTP

**Section:** Core Network Protocols &nbsp;·&nbsp; **Topic:** 39 of 290 &nbsp;·&nbsp; **Level:** 🟢 Beginner

## 📖 First, a Quick Story

Imagine walking up to a library counter and asking the librarian, "Can I have the book titled 'Introduction to Gardening'?" The librarian understands the request because both of you are using a shared, expected format: you name what you want, and they hand it over — or tell you it's not available.

**HTTP** is this same request-and-response pattern, used by web browsers and web servers to exchange information.

## 🧠 What Is It?

**HTTP (HyperText Transfer Protocol)** is the protocol used to request and deliver content on the web — such as web pages, images, and other resources — between a client (typically a web browser) and a server.

This is a concrete, real-world example of the [Client vs Server](08-client-vs-server.md) pattern and the general idea of a [Protocol](06-protocol.md), both covered earlier: HTTP defines the specific rules for how a web browser (client) asks for content, and how a web server responds.

## 🎯 Why Does It Exist?

For the web to work at all, browsers and servers — built by countless different companies, running on wildly different systems — need a shared, standardized way to ask for and deliver content. Without an agreed format, a browser's request might make no sense to a given server, or a server's response might be unreadable to the browser.

HTTP exists to solve this by defining a clear, standard structure: how a request should be formatted, what kinds of requests are possible, and how a server should structure its response — allowing any HTTP-compliant browser to communicate correctly with any HTTP-compliant server.

## ⚙️ How Does It Work?

<p align="center"><img src="diagrams/1.svg" alt="diagram"></p>

An HTTP exchange follows a simple request-response pattern:

1. The client sends an HTTP **request**, specifying what it wants (for example, a specific web page) and what kind of action it's requesting.
2. The server processes that request and sends back an HTTP **response**, containing the requested content, along with a status code indicating what happened.

Common types of HTTP requests, called **methods**:

| Method | Purpose |
|---|---|
| GET | Request to retrieve information (like loading a web page) |
| POST | Submit data to the server (like submitting a form) |

Common HTTP **status codes** in a response:

<p align="center"><img src="diagrams/2.svg" alt="diagram"></p>

🔍 HTTP relies on [TCP](34-tcp.md) underneath it to actually deliver its requests and responses reliably — HTTP defines *what* is being asked for and returned, while TCP handles making sure that data actually arrives correctly.

## 🧩 Important Parts

| Term | Meaning |
|---|---|
| 🌐 HTTP | HyperText Transfer Protocol — the protocol used to request and deliver web content |
| 📨 Request | A message from a client asking for something (e.g., a web page) |
| 📩 Response | The server's reply, containing the requested content and a status code |
| 🔢 Status code | A number in the response indicating what happened (success, error, etc.) |
| 🔧 Method | The type of action being requested (e.g., GET, POST) |

## 💡 Simple Example

Visiting a website by typing its address into a browser:

1. Your browser sends an HTTP GET request: "Please send me the content at `/index.html`."
2. The web server locates that content and responds with an HTTP response, including the status code `200 OK` and the actual page content (text, images, layout instructions).
3. Your browser receives this response and renders the page on your screen.

<p align="center"><img src="diagrams/3.svg" alt="diagram"></p>

If you had instead requested a page that doesn't exist, the server would respond with a `404 Not Found` status code instead, along with a page telling you the content couldn't be located.

## 🔍 How It Looks in Real Life

- Every time you visit a website beginning with `http://`, you are using this exact protocol.
- Submitting a form on a website (like a login form) typically uses an HTTP POST request to send your data to the server.
- Browser developer tools let you directly inspect the HTTP requests and responses happening behind the scenes as you browse.

## ⚠️ Common Confusion

- ❌ **"HTTP is secure by default."**
  Standard HTTP sends data in plain, readable form, without encryption — meaning anyone able to observe the network traffic could potentially read it. This is exactly why [HTTPS](40-https.md), covered in the next topic, exists — to add security to this same underlying protocol.

- ❌ **"HTTP only handles loading web pages."**
  While loading web pages is the most familiar use, HTTP is also used for many other things — like APIs (systems exchanging data programmatically), submitting forms, uploading files, and more.

- ❌ **"A 404 error means the entire website is down."**
  A 404 status code means the *specific* requested resource wasn't found — the rest of the website, and the server itself, may be working completely fine.

## 🛠️ Practical Example

Browser developer tools (or command-line tools) can show the raw HTTP exchange:

```
GET /index.html HTTP/1.1
Host: example.com
```

```
HTTP/1.1 200 OK
Content-Type: text/html
```

What this means:
- The first block is the client's request: asking for `/index.html` from the host `example.com`.
- The second block is the beginning of the server's response: status `200 OK`, followed by the type of content being returned (`text/html`), and then the actual page content itself.

## 🧪 Quick Check

**1. What is HTTP used for?**
<details><summary>Answer</summary>Requesting and delivering content on the web — such as web pages and other resources — between a client (browser) and a server.</details>

**2. What are the two main parts of an HTTP exchange?**
<details><summary>Answer</summary>The request (from the client, asking for something) and the response (from the server, providing the result along with a status code).</details>

**3. True or False: Standard HTTP encrypts data by default, keeping it private from anyone observing the network.**
<details><summary>Answer</summary>False. Standard HTTP sends data in plain, unencrypted form — HTTPS (covered next) exists specifically to add encryption to this same protocol.</details>

**4. What does an HTTP status code of 404 mean?**
<details><summary>Answer</summary>That the specific requested resource was not found on the server — it does not necessarily mean the whole website or server is down.</details>

**5. What underlying protocol does HTTP typically rely on to reliably deliver its requests and responses?**
<details><summary>Answer</summary>TCP.</details>

## 🧠 Remember This

<p align="center"><img src="diagrams/4.svg" alt="diagram"></p>

- HTTP is the protocol used to request and deliver web content, following a request-response pattern.
- Requests use methods like GET (retrieve) and POST (submit data); responses include a status code.
- Standard HTTP is not encrypted — HTTPS adds security on top of it.
- HTTP relies on TCP underneath it for reliable delivery.
