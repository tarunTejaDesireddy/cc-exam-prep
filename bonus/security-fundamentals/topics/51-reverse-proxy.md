# 🔄 Reverse Proxy — Caveman Style

**Section:** How the Internet Works &nbsp;·&nbsp; **Topic:** 51 of 290 &nbsp;·&nbsp; **Level:** 🟢 Beginner

A **reverse proxy** is a server that sits **in front of backend servers** and receives requests from Internet users on their behalf.

Think:

> 🪨 Many visitors want to enter Grog's cave.

Instead of letting everyone directly reach the important rooms:

```
🌐 Internet
   ↓
🖥️ Application Server
```

Grog puts a **guard at the entrance**:

```
🌐 Internet
     ↓
🛡️ Reverse Proxy
     ↓
🖥️ Backend Servers
```

The reverse proxy is the **front door**.

---

# 🏰 Why "Reverse"?

A normal **forward proxy** represents the client:

```
👤 Client → 🛡️ Proxy → 🌐 Internet
```

A **reverse proxy** represents/protects the servers:

```
🌐 Internet → 🛡️ Reverse Proxy → 🖥️ Servers
```

<p align="center"><img src="diagrams/1.svg" alt="diagram"></p>

### 🧠 Exam memory

> **Forward proxy = in front of CLIENTS**

> **Reverse proxy = in front of SERVERS**

---

# 🔄 How It Works

Suppose you visit:

> `https://example.com`

The request travels in through the reverse proxy, and the response comes back out the same way:

<p align="center"><img src="diagrams/2.svg" alt="diagram"></p>

---

# 🛡️ What Does a Reverse Proxy Do?

There are several functions you should recognize.

<p align="center"><img src="diagrams/3.svg" alt="diagram"></p>

## 1. 🔀 Request Routing

The reverse proxy can decide:

> **"Which backend server should handle this request?"**

For example:

<p align="center"><img src="diagrams/4.svg" alt="diagram"></p>

---

## 2. ⚖️ Load Balancing

A reverse proxy can **distribute requests across multiple servers**.

<p align="center"><img src="diagrams/5.svg" alt="diagram"></p>

Instead of sending every user to one server:

> 👥👥👥👥 → 💥 Server 1

it distributes them:

> 👥 → Server 1<br>
> 👥 → Server 2<br>
> 👥 → Server 3

### 🧠 Exam clue

> **"Distribute incoming traffic across multiple web servers."**

→ **Reverse proxy / load balancer**

---

## 3. 🔐 TLS Termination

The reverse proxy can **handle the external HTTPS connection**.

```
👤 Browser
   │
   │ HTTPS
   ▼
🛡️ Reverse Proxy
   │
   │ Internal connection
   ▼
🖥️ Application Server
```

The reverse proxy handles the TLS connection from the client.

This is called:

> **TLS termination**

The exact internal connection can vary; it may itself be encrypted.

---

## 4. 🛡️ Security Filtering

The reverse proxy can **inspect incoming requests and reject unwanted traffic**.

For example:

> 🚨 Suspicious request → ❌ Block

> ✅ Normal request → Forward

A **WAF** is often deployed alongside or integrated with reverse-proxy infrastructure to inspect web traffic for application-layer attacks.

---

## 5. 🙈 Hide Backend Servers

The Internet **doesn't need direct access** to the backend servers.

Instead:

<p align="center"><img src="diagrams/6.svg" alt="diagram"></p>

This can **reduce direct exposure** of backend infrastructure.

> [!WARNING]
> Don't say: ❌ **"A reverse proxy makes the backend impossible to attack."**
>
> It doesn't. It provides an **additional layer of architecture/security**, but vulnerabilities can still exist.

---

## 6. ⚡ Caching

A reverse proxy can **cache frequently requested content**.

Example:

> 10,000 users request the same image.

Instead of asking the backend every time:

```
🌐 Users
   ↓
🛡️ Reverse Proxy
   ↓
📦 Cached image
```

The proxy can serve the cached copy.

This can **reduce backend workload and improve performance**.

---

# 🧠 Reverse Proxy vs Web Server

They can be separate roles, but **one system can perform both**.

For example:

```
Internet
   ↓
🛡️ Reverse Proxy
   ↓
🖥️ Web Server
   ↓
⚙️ Application
```

The reverse proxy is concerned with **receiving and forwarding requests**.

The web/application server may actually **serve or generate the content**.

---

# 🆚 Reverse Proxy vs Forward Proxy

This is the **most important comparison**.

| | Forward Proxy | Reverse Proxy |
| --- | --- | --- |
| Protects/represents | 👤 Clients | 🖥️ Servers |
| Traffic | Client → Internet | Internet → Servers |
| Example | Company web proxy | Website front end |
| Common functions | Filtering, logging, caching | Load balancing, TLS termination, routing |
| Internet sees | Proxy instead of client in some deployments | Proxy instead of backend servers |

### 🪨 Memory trick:

> **Forward = Grog goes FORWARD to Internet**

> **Reverse = Internet comes toward the servers, but meets the proxy first**

---

# 🆚 Reverse Proxy vs NAT

Another common exam trap.

### 🔄 NAT

> Changes/translates **IP addresses**.

Example:

```
192.168.1.10
     ↓ NAT
203.0.113.10
```

### 🛡️ Reverse Proxy

> Receives and forwards **application requests**.

Example:

```
HTTPS request
     ↓
Reverse Proxy
     ↓
Backend server
```

### 🧠 Remember:

> **NAT = address translation**

> **Reverse proxy = application traffic intermediary**

---

# 🎯 Exam Scenarios

### Scenario 1

> A company places a server in front of several web servers and distributes incoming requests among them.

→ **Reverse proxy / load balancer**

---

### Scenario 2

> External users connect to one public endpoint, while internal application servers are not directly exposed.

→ **Reverse proxy**

---

### Scenario 3

> A server terminates HTTPS connections and forwards requests to backend servers.

→ **Reverse proxy performing TLS termination**

---

### Scenario 4

> A system caches web content and serves it to users without contacting the backend every time.

→ **Reverse proxy caching**

---

### Scenario 5

> A company wants employees' web traffic filtered before reaching the Internet.

→ **Forward proxy**

---

### Scenario 6

> A device changes a private IP into a public IP.

→ **NAT**

---

## 🧪 Quick Check

**1. Where does a reverse proxy sit, and whom does it represent?**
<details><summary>Answer</summary>In front of backend servers. It represents the servers, receiving requests from Internet clients on their behalf.</details>

**2. A site sends <code>/shop</code> requests to one backend and <code>/api</code> requests to another. Which reverse proxy function is this?**
<details><summary>Answer</summary>Request routing.</details>

**3. A reverse proxy spreads incoming requests across three identical web servers. What is this called, and why do it?**
<details><summary>Answer</summary>Load balancing — so no single server gets overwhelmed, improving performance and availability.</details>

**4. What does TLS termination mean?**
<details><summary>Answer</summary>The reverse proxy handles the client's HTTPS/TLS connection itself, then forwards the request to the backend (over a connection that may or may not be encrypted again).</details>

**5. True or False: Putting a reverse proxy in front of an application makes the backend impossible to attack.**
<details><summary>Answer</summary>False. It reduces direct exposure and adds a security layer, but vulnerabilities in the application can still be exploited through it.</details>

**6. What security control is often integrated with reverse proxies to inspect web traffic for application-layer attacks?**
<details><summary>Answer</summary>A WAF (Web Application Firewall).</details>

**7. A company wants to filter employees' browsing before it reaches the Internet. Forward or reverse proxy?**
<details><summary>Answer</summary>Forward proxy — it sits in front of clients going out. A reverse proxy sits in front of servers receiving traffic in.</details>

**8. How is a reverse proxy different from NAT?**
<details><summary>Answer</summary>NAT translates IP addresses. A reverse proxy receives and forwards application requests (like HTTP/HTTPS) to backend servers.</details>

## 🧠 Remember This

<p align="center"><img src="diagrams/7.svg" alt="diagram"></p>

Remember its major jobs:

> 🔀 **Route requests**

> ⚖️ **Load balance**

> 🔐 **Terminate TLS**

> 🛡️ **Filter/protect**

> ⚡ **Cache**

> 🙈 **Hide backend infrastructure**

### 🎯 One-line exam answer:

> **A reverse proxy is an intermediary placed in front of backend servers that receives client requests and forwards them to the appropriate server, often providing routing, load balancing, TLS termination, caching, and an additional security boundary.**
