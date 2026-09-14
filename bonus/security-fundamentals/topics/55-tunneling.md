# 🚇 Tunneling — Caveman Style

**Section:** How the Internet Works &nbsp;·&nbsp; **Topic:** 55 of 290 &nbsp;·&nbsp; **Level:** 🟢 Beginner

**Tunneling** means **putting one type of network traffic inside another protocol or connection** so it can travel through a network.

Think:

> 🪨 Grog has a big object that can't travel directly through a narrow path.

So he puts it inside a bigger protected tube:

```
📦 Original traffic
       ↓
   🚇 TUNNEL
       ↓
🌐 Network
       ↓
   🚇 TUNNEL
       ↓
📦 Original traffic
```

The key idea is:

> **Traffic is encapsulated inside another protocol.**

---

# 🧠 Simple Example

Imagine Grog wants to send:

> 📦 **Private network traffic**

across the **public Internet**.

A tunnel can wrap that traffic:

```
Original packet
┌─────────────────────┐
│ Private traffic     │
└─────────────────────┘

        ↓ TUNNEL

Outer packet
┌──────────────────────────────┐
│ Outer headers                │
│ ┌──────────────────────────┐ │
│ │ Private traffic          │ │
│ └──────────────────────────┘ │
└──────────────────────────────┘

        ↓

🌐 Internet

        ↓

Tunnel endpoint removes outer wrapping

        ↓

📦 Original traffic
```

This process is called **encapsulation**.

```mermaid
flowchart LR
    A["📦 Original packet<br/>private traffic"]:::info --> B["🚇 Tunnel start<br/>+ outer headers<br/>= wrap it"]:::warn --> C["🌐 Internet<br/>only sees the<br/>outer packet"]:::bad --> D["🚇 Tunnel end<br/>remove outer headers<br/>= unwrap it"]:::warn --> E["📦 Original packet<br/>delivered"]:::good

    classDef info fill:#3b82f6,stroke:#1d4ed8,color:#fff
    classDef warn fill:#f59e0b,stroke:#b45309,color:#fff
    classDef good fill:#22c55e,stroke:#15803d,color:#fff
    classDef bad fill:#ef4444,stroke:#b91c1c,color:#fff
```

---

# 🔐 Is Tunneling Always Encrypted?

**No.**

This is an **important exam distinction**.

> **Tunneling ≠ encryption**

A tunnel can provide **encapsulation without necessarily encrypting** the contents.

For example:

> 📦 **Traffic inside another protocol = tunneling**

But:

> 🔐 **Encrypted traffic inside another protocol = secure/encrypted tunneling**

```mermaid
flowchart TD
    subgraph PLAIN["🚇 Tunnel WITHOUT encryption"]
        P1["📦 Outer packet"]:::warn --> P2["👀 Inner traffic<br/>still READABLE"]:::bad
    end
    subgraph SEC["🔐 Tunnel WITH encryption (e.g. VPN)"]
        S1["📦 Outer packet"]:::warn --> S2["🔒 Inner traffic<br/>UNREADABLE without key"]:::good
    end

    classDef warn fill:#f59e0b,stroke:#b45309,color:#fff
    classDef good fill:#22c55e,stroke:#15803d,color:#fff
    classDef bad fill:#ef4444,stroke:#b91c1c,color:#fff
```

---

# 🔐 VPN = Common Example of Tunneling

A **VPN commonly uses tunneling** to carry traffic between endpoints.

```
🏠 Employee
     │
     │ Original traffic
     ↓
🔐 VPN Tunnel
     │
     │ Encapsulated/protected
     ↓
🌐 Internet
     │
     ↓
🏢 VPN Gateway
```

The VPN gateway receives the tunneled traffic and processes the inner traffic.

---

# 🪨 Caveman Analogy

Imagine:

> 🪨 Grog wants to move a small stone through a dangerous forest.

Instead of carrying it openly:

```
🪨 ───────────────→ 🌲
```

he puts the stone inside a tunnel:

```
🪨
 ↓
🚇 [🪨]
 ↓
🌲🌲🌲
 ↓
🚇
 ↓
🪨
```

> **The stone = original traffic.**

> **The tunnel = encapsulation mechanism.**

---

# 🧩 Common Tunneling Examples

You may encounter:

## 🔐 VPN tunneling

Carries network traffic through a VPN connection.

Examples include technologies based on:

- IPsec
- SSL/TLS
- WireGuard

## 🌐 IPv6 over IPv4

IPv6 traffic can be encapsulated so it can travel across an IPv4 network.

Think:

> 📦 **IPv6 inside IPv4.**

## 🖥️ SSH tunneling

SSH can create tunnels that **carry other traffic through an SSH connection**.

For example:

```
Application
    ↓
🔐 SSH tunnel
    ↓
🌐 Network
```

```mermaid
flowchart TD
    T["🚇 TUNNELING EXAMPLES"]:::warn
    T --> V["🔐 VPN<br/>private traffic inside<br/>IPsec / TLS / WireGuard"]:::good
    T --> I["🌐 IPv6 over IPv4<br/>IPv6 packet inside<br/>an IPv4 packet"]:::info
    T --> S["🖥️ SSH tunneling<br/>another app's traffic<br/>inside an SSH session"]:::good

    classDef info fill:#3b82f6,stroke:#1d4ed8,color:#fff
    classDef warn fill:#f59e0b,stroke:#b45309,color:#fff
    classDef good fill:#22c55e,stroke:#15803d,color:#fff
```

---

# 🆚 Tunneling vs Encryption

This distinction is **very important**.

### Tunneling

> **How traffic is transported/encapsulated**

### Encryption

> **How traffic is protected from being read**

You can have:

```
Tunneling without encryption
```

or:

```
Tunneling + encryption
```

A **VPN commonly uses both**.

---

# 🆚 Tunneling vs Encapsulation

They're **closely related**.

### Encapsulation

A broad networking concept:

> **Put one protocol's information inside another protocol's packet/frame.**

### Tunneling

A technique that **uses encapsulation to carry traffic through another network/protocol**.

Think:

> **Encapsulation = wrapping**

> **Tunneling = using the wrapping to carry traffic through somewhere**

```mermaid
flowchart LR
    EN["📦 ENCAPSULATION<br/>the wrapping<br/>(what)"]:::info -->|"used to carry traffic<br/>through another network"| TU["🚇 TUNNELING<br/>the journey<br/>(how it's transported)"]:::warn -->|"optionally add"| EC["🔐 ENCRYPTION<br/>makes it unreadable<br/>(protection)"]:::good

    classDef info fill:#3b82f6,stroke:#1d4ed8,color:#fff
    classDef warn fill:#f59e0b,stroke:#b45309,color:#fff
    classDef good fill:#22c55e,stroke:#15803d,color:#fff
```

---

# 🎯 Exam Scenarios

### Scenario 1

> IPv6 traffic is carried across an IPv4 network by placing the IPv6 packet inside an IPv4 packet.

→ **Tunneling**

### Scenario 2

> A VPN carries private network traffic across the public Internet.

→ **Tunneling**

### Scenario 3

> Traffic is placed inside another protocol but is not encrypted.

→ **Tunneling/encapsulation, but not necessarily encryption.**

### Scenario 4

> An administrator uses SSH to securely carry another connection through an SSH session.

→ **SSH tunneling**

---

## 🧪 Quick Check

**1. What is tunneling?**
<details><summary>Answer</summary>Carrying one type of network traffic inside another protocol or connection so it can travel across a network.</details>

**2. What is the name for wrapping one protocol's data inside another protocol's packet?**
<details><summary>Answer</summary>Encapsulation.</details>

**3. True or False: Tunneling always encrypts the traffic inside the tunnel.**
<details><summary>Answer</summary>False — the key trap. Tunneling is about encapsulation/transport. Encryption is separate; a tunnel may or may not encrypt.</details>

**4. A network carries IPv6 packets across an IPv4-only network by placing them inside IPv4 packets. What is this?**
<details><summary>Answer</summary>Tunneling (IPv6 over IPv4).</details>

**5. What happens at the far end of a tunnel?**
<details><summary>Answer</summary>The tunnel endpoint removes the outer wrapping (headers) and delivers the original inner traffic.</details>

**6. An administrator forwards a database connection through an SSH session. What is this called?**
<details><summary>Answer</summary>SSH tunneling.</details>

**7. How does a VPN relate to tunneling and encryption?**
<details><summary>Answer</summary>A VPN commonly uses both: tunneling to carry the traffic across the Internet, and encryption to keep it unreadable.</details>

**8. In one line each, what's the difference between encapsulation, tunneling and encryption?**
<details><summary>Answer</summary>Encapsulation = wrapping the traffic. Tunneling = using that wrapping to carry traffic through another network. Encryption = making the traffic unreadable without the key.</details>

## 🧠 Remember This

```mermaid
flowchart LR
    O["📦 Traffic"]:::info --> W["🚇 Wrapped in<br/>another protocol"]:::warn --> N["🌐 Network"]:::warn --> U["📦 Unwrapped"]:::good
    W -.->|"🔐 encryption?<br/>only if added (e.g. VPN)"| N

    classDef info fill:#3b82f6,stroke:#1d4ed8,color:#fff
    classDef warn fill:#f59e0b,stroke:#b45309,color:#fff
    classDef good fill:#22c55e,stroke:#15803d,color:#fff
```

> 🚇 **Tunneling = carrying traffic inside another protocol/network**

> 📦 **Encapsulation = wrapping traffic**

> 🔐 **Encryption = making traffic unreadable without the key**

> ❌ **Tunneling does NOT automatically mean encryption**

> 🔐 **VPNs commonly use encrypted tunneling**

### 🎯 One-line exam answer:

> **Tunneling is a networking technique that encapsulates one protocol's traffic inside another protocol so it can be transported across a network, often with encryption when used by VPNs.**
