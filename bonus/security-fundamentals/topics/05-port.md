# 🔌 Port

**Section:** Networking Foundations &nbsp;·&nbsp; **Topic:** 5 of 130 &nbsp;·&nbsp; **Level:** 🟢 Beginner

## 📖 First, a Quick Story

Imagine a large office building at one single street address. Inside, there are many different companies: a law firm, a bakery, and a bank, each on a different floor. The street address gets mail to the building — but the floor number is what gets that mail to the correct company inside it.

A **port** is that floor number. The IP address gets data to the correct device (the building), and the port number gets it to the correct service or application running on that device (the correct floor). A single server can run a website, an email service, and more, all at the same IP address, sorted only by their port numbers.

## 🧠 What Is It?

A **port** is a number that identifies a specific service or application running on a device, in addition to the device's IP address.

If an IP address (covered in [IP Address](01-ip-address.md)) identifies *which device* to deliver data to, a port identifies *which application or service on that device* should receive it.

Port numbers range from 0 to 65535. Some common examples:

- Port 80 → normal website traffic (HTTP)
- Port 443 → secure website traffic (HTTPS)
- Port 22 → secure remote login (SSH)

## 🎯 Why Does It Exist?

A single device, such as a server, often runs many different services at the same time. For example, one server might run a website, an email service, and a file transfer service simultaneously.

If data only had an IP address attached, the device would receive the data but wouldn't know which of its running services the data was meant for.

Ports solve this problem. Each service on a device "listens" on a specific port number. When data arrives, the device looks at the port number and delivers the data to the matching service.

## ⚙️ How Does It Work?

A device's full network address for a specific service is actually a combination of its IP address and a port number, often written like this:

```
203.0.113.45:443
```

This means: "the device at IP address `203.0.113.45`, specifically its service running on port `443`" (in this example, that would typically be a secure website).

<p align="center"><img src="diagrams/05-port-1.svg" alt="diagram" width="500"></p>

Step by step:

1. A client wants to visit a secure website hosted on a server.
2. The client sends a request to the server's IP address, specifically targeting port 443.
3. The server sees the request arrive on port 443 and hands it to the service listening there — the secure web service.
4. That service processes the request and sends a response back to the client.

If the same server was also running an SSH service on port 22, a completely separate request arriving on port 22 would be handled by that different service — even though both requests arrived at the same IP address.

What happens if nothing is listening on the requested port:

<p align="center"><img src="diagrams/05-port-2.svg" alt="diagram" width="500"></p>

If no service is actively listening on the requested port, the connection is refused — the IP address may be perfectly reachable, but that specific "door" is closed.

## 🧩 Important Parts

| Term | Meaning |
|---|---|
| 🔌 Port number | A number (0–65535) identifying a specific service on a device |
| 👂 Listening | When a service is actively waiting for incoming data on a specific port |
| 📋 Well-known ports | A reserved range of port numbers (0–1023) commonly assigned to standard services |

🔍 **Common well-known ports:**

| Port | Service |
|---|---|
| 20/21 | FTP (file transfer) |
| 22 | SSH (secure remote login) |
| 25 | SMTP (sending email) |
| 53 | DNS (domain name lookup) |
| 80 | HTTP (website traffic) |
| 443 | HTTPS (secure website traffic) |

These specific protocols are explained in detail in their own topics later. For now, the important idea is simply that each of them is commonly associated with a standard port number.

## 💡 Simple Example

Imagine a server with the IP address `203.0.113.45` running two services:

- A website, listening on port 443
- A remote login service, listening on port 22

If a user visits the website:
```
https://203.0.113.45:443
```
The request goes to port 443, and the web service responds with the website content.

If an administrator connects for remote login:
```
ssh 203.0.113.45
```
This request goes to port 22 by default, and the remote login service responds — completely separate from the website traffic, even though it's the same server.

## 🔍 How It Looks in Real Life

- Web browsers automatically use port 80 for regular websites (`http://`) and port 443 for secure websites (`https://`), even though you don't usually type the port number yourself.
- Firewalls (covered in a later topic) are often configured using port numbers, to allow or block specific types of traffic.
- IT administrators use tools to check which ports are open on a server, to understand what services are exposed.

## ⚠️ Common Confusion

- ❌ **"A port is a physical thing, like a USB port."**
  A network port is not physical hardware — it's a logical number used by software to sort incoming and outgoing data by service. A device's network cable or Wi-Fi connection is physical; the port number is purely a software-level concept.

- ❌ **"You always need to type the port number to use a service."**
  Common services have default port numbers that are used automatically (like 443 for HTTPS). You only need to specify a port manually when a service uses a non-default port.

- ❌ **"Two different services can share the same port on the same device at the same time."**
  Under normal conditions, only one service on a device can actively listen on a specific port number at any given moment. If two programs try to use the exact same port, one of them will fail to start that service.

## 🛠️ Practical Example

Checking which ports are open and listening on a device: <kbd>netstat -an</kbd> on Windows, or <kbd>ss -tulnp</kbd> on Linux.

**Windows:**
```
netstat -an
```

**Linux:**
```
ss -tulnp
```

Example output (simplified):
```
Proto  Local Address        State
TCP    0.0.0.0:443          LISTENING
TCP    0.0.0.0:22           LISTENING
```

What this means:
- `0.0.0.0:443` — the device is listening for connections on port 443 (commonly HTTPS) on all its network interfaces.
- `0.0.0.0:22` — the device is also listening on port 22 (commonly SSH).
- `LISTENING` — the service is actively waiting for incoming connections on that port.

## 🧪 Quick Check

**1. What does a port number identify, in addition to an IP address?**
<details><summary>Answer</summary>A specific service or application running on a device.</details>

**2. Why does a single device need multiple ports instead of just one IP address?**
<details><summary>Answer</summary>Because a device can run multiple services at the same time, and ports allow incoming data to be delivered to the correct service instead of all services receiving everything.</details>

**3. What is the well-known port number typically used for secure website traffic (HTTPS)?**
<details><summary>Answer</summary>Port 443.</details>

**4. True or False: A port is a physical connector on a device.**
<details><summary>Answer</summary>False. A port is a logical number used in software to route data to the correct service, not a physical connector.</details>

**5. If a server is running both a website and an SSH service, how does it tell the two types of incoming traffic apart?**
<details><summary>Answer</summary>By the port number attached to each request — website traffic typically arrives on port 80 or 443, while SSH traffic typically arrives on port 22.</details>

## 🧠 Remember This

- A port identifies a specific service on a device, working alongside the device's IP address.
- Ports allow one device to run multiple services at once without confusion.
- Common services have well-known default ports, such as 443 for HTTPS and 22 for SSH.
- A port is a logical software concept, not physical hardware.
