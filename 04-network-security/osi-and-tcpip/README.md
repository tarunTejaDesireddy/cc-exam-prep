<div align="center">

<img src="../assets/module-04-banner.svg" alt="04 · Networking and Cloud Security Concepts" width="100%">

# 🪜 OSI and TCP/IP

### *Networking in layers — and the one rule that tells you which layer anything is*

[![Module](https://img.shields.io/badge/Module-04_Network_Security-0d2b33?style=flat-square)](../README.md)
[![Domain](https://img.shields.io/badge/Domain-4%20·%2021.3%25-5C7CFA?style=flat-square)](../README.md)
[![Read](https://img.shields.io/badge/Read-~14%20min-57606A?style=flat-square)](#)

📌 *Recite the seven OSI layers, place devices and protocols (ARP = 2, TLS = 6), map TCP/IP, and know TCP vs UDP and the handshake.*

</div>

---

## 🧸 The big idea

Posting a parcel abroad takes several people, each doing **one job** and not caring about the others:
you write the letter; someone translates it; a phone call agrees the delivery; the courier splits it
into numbered boxes and tracks each one; a planner picks the route between cities; a local van driver
finds the right street; and the road carries the van.

Networking works the same way: it's split into **layers**. Each layer does one job and hands its
result to the layer below. The payoff is **independence** — swap your Wi-Fi card and your web browser
doesn't notice.

There are two models:

- **OSI** — **seven** layers. A conceptual model. **This is the one the exam tests most.**
- **TCP/IP** — **four** layers. What the internet actually runs on.

**Learn OSI properly, then map TCP/IP onto it.**

---

## 📖 Words you will keep seeing

| Word | What it means on this exam |
|---|---|
| **OSI model** | Open Systems Interconnection — a 7-layer reference model. |
| **TCP/IP model** | The 4-layer model the internet is built on. |
| **Encapsulation** | Each layer wraps the data from above with its own header. |
| **PDU** | Protocol Data Unit — the name of the data unit at each layer (bits, frames, packets, segments). |
| **TCP** | Connection-oriented, **reliable** transport. |
| **UDP** | Connectionless, **fast**, no delivery guarantee. |
| **Three-way handshake** | How TCP opens a connection: **SYN → SYN-ACK → ACK**. |

---

## 🔍 The explanation

### The seven OSI layers

Numbered from the bottom: layer 1 is the cable, layer 7 is the application.

| # | Layer | Job | Unit (PDU) | Examples | Device |
|:--:|---|---|---|---|---|
| **7** | **Application** | What the user's software talks to | Data | HTTP, HTTPS, FTP, SMTP, DNS, DHCP, SNMP | WAF, app gateway |
| **6** | **Presentation** | Format, **encrypt**, compress | Data | **TLS/SSL**, JPEG, ASCII | — |
| **5** | **Session** | Open, manage, close conversations | Data | NetBIOS, RPC | — |
| **4** | **Transport** | End-to-end delivery, **ports** | **Segment** | **TCP, UDP** | Basic firewall (with 3) |
| **3** | **Network** | Routing **between** networks, **IP** | **Packet** | **IP, ICMP**, IPsec | **Router** |
| **2** | **Data Link** | Delivery **within** a network, **MAC** | **Frame** | **ARP**, Ethernet | **Switch**, bridge |
| **1** | **Physical** | Bits as signals | **Bit** | Cables, radio | **Hub**, repeater |

### The four layers that carry the marks

Most questions live in layers 1–4 — and **the type of address tells you the layer**:

<p align="center"><img src="diagrams/1.svg" alt="Layer 4 transport uses ports and segments with TCP and UDP; layer 3 network uses IP addresses and packets, device router; layer 2 data link uses MAC addresses and frames, device switch; layer 1 physical has no address, uses bits, device hub" width="880"></p>

> 🎯 **MAC → layer 2. IP → layer 3. Port → layer 4.** That one rule answers a lot of questions.

### Encapsulation — wrapping on the way down

<p align="center"><img src="diagrams/4.svg" alt="Data from the application gets a TCP header adding ports to become a layer 4 segment, then an IP header adding IP addresses to become a layer 3 packet, then an Ethernet header adding MAC addresses to become a layer 2 frame, then goes onto the wire as bits at layer 1" width="880"></p>

Going down: **Data → Segment → Packet → Frame → Bits.** Coming back up, each layer strips its own
header off.

### The TCP/IP model

<p align="center"><img src="diagrams/2.svg" alt="TCP/IP application maps to OSI layers 7, 6 and 5; TCP/IP transport maps to OSI 4; TCP/IP internet maps to OSI 3 network; TCP/IP network access maps to OSI 2 and 1" width="480"></p>

> ⚠️ **TCP/IP calls its layer 3 "Internet", not "Network".** That naming difference is examined.

### TCP vs UDP (both layer 4)

| | **TCP** | **UDP** |
|---|---|---|
| Connection | **Connection-oriented** — handshake first | **Connectionless** — just sends |
| Reliability | **Guaranteed**, acknowledged, retransmits | **No guarantee** |
| Order | Reassembled in order | No ordering |
| Speed | Slower (more overhead) | **Faster** |
| Used for | Web, email, file transfer | Streaming, voice, gaming, DNS queries |

### The three-way handshake

<p align="center"><img src="diagrams/3.svg" alt="The client sends SYN, the server replies SYN-ACK, the client replies ACK, and the connection is open" width="440"></p>

A **SYN flood** attack sends step 1 over and over and **never** sends step 3 — leaving the server
holding thousands of half-open connections until it runs out of room.

---

## ⚖️ Told apart

| | Layer | Not to be confused with |
|---|---|---|
| **Switch** | 2 — MAC | **Router** — 3, IP |
| **Hub** | 1 — no addressing | **Switch** — 2, makes forwarding decisions |
| **IP** | 3 | **TCP/UDP** — 4. IP gets it to the host; ports get it to the app |
| **ARP** | **2** | Often misplaced at 3 because it deals with IP addresses |
| **TLS/SSL** | **6 — Presentation** | Often assumed 4 or 7 |
| **TCP** | Reliable, connection-oriented, slower | **UDP** — connectionless, faster |
| **OSI layer 3 "Network"** | — | **TCP/IP "Internet"** — same job, different name |

> [!CAUTION]
> **The two most-missed placements:** **ARP is layer 2** (it resolves IP → MAC to deliver frames
> locally). **TLS/SSL is layer 6, Presentation** (encryption is a presentation job) — answer that on
> this exam.

---

## ⚠️ Where your instinct is wrong

> [!WARNING]
> **In the job:** TLS rides on TCP, so you'd call it layer 4 — or call the question academic.
>
> **On the exam:** **TLS/SSL = layer 6.** Answer the model, not the implementation.

> [!WARNING]
> **In the job:** OSI is a teaching toy; real work is TCP/IP.
>
> **On the exam:** OSI is the primary model. Learn it; treat TCP/IP as a mapping.

> [!WARNING]
> **In the job:** modern firewalls inspect application content.
>
> **On the exam:** a **basic firewall is layers 3 and 4** (IP + port). App-aware inspection is
> described separately.

---

## 🧠 How to remember it

**7 → 1: "All People Seem To Need Data Processing"** — Application, Presentation, Session, Transport,
Network, Data Link, Physical.

**1 → 7: "Please Do Not Throw Sausage Pizza Away".**

**MAC = 2, IP = 3, Port = 4.**

**PDUs going down: "Do Some People Fear Birthdays"** — Data, Segment, Packet, Frame, Bits.

**Handshake: SYN → SYN-ACK → ACK.**

---

## ✅ Check you actually got it

Answer all five before expanding anything.

**Q1.** At which OSI layer does a switch primarily operate?

- **A.** Layer 1 — Physical
- **B.** Layer 2 — Data Link
- **C.** Layer 3 — Network
- **D.** Layer 4 — Transport

<details>
<summary><b>Answer</b></summary>

**B.** Switches forward frames by MAC address.

- **A** is the hub. **C** is the router. **D** is ports — switches don't look at them.

</details>

**Q2.** Which protocol resolves an IP address to a MAC address, and at which layer?

- **A.** DNS, at layer 7
- **B.** ARP, at layer 2
- **C.** ARP, at layer 3
- **D.** ICMP, at layer 3

<details>
<summary><b>Answer</b></summary>

**B — ARP, layer 2.**

- **A** — DNS resolves *names* to IPs.
- **C** is the most common error — ARP *involves* IPs but works at layer 2.
- **D** — ICMP carries errors/diagnostics (ping).

</details>

**Q3.** Which statement correctly distinguishes TCP from UDP?

- **A.** TCP is faster because it has less overhead
- **B.** UDP guarantees delivery through acknowledgements
- **C.** TCP is connection-oriented and reliable; UDP is connectionless and unreliable
- **D.** TCP operates at layer 3 and UDP at layer 4

<details>
<summary><b>Answer</b></summary>

**C.**

- **A** and **B** are reversed.
- **D** — both are layer 4.

</details>

**Q4.** A firewall filtering on source IP address and destination port operates at which layers?

- **A.** Layers 1 and 2
- **B.** Layers 3 and 4
- **C.** Layers 5 and 6
- **D.** Layer 7 only

<details>
<summary><b>Answer</b></summary>

**B.** IP = 3, port = 4.

- **A** is signals and MAC. **C** is sessions and encryption. **D** is content inspection.

</details>

**Q5.** What is the correct order of the TCP three-way handshake?

- **A.** ACK → SYN → SYN-ACK
- **B.** SYN → ACK → SYN-ACK
- **C.** SYN → SYN-ACK → ACK
- **D.** SYN-ACK → SYN → ACK

<details>
<summary><b>Answer</b></summary>

**C.** You can't acknowledge a request before it's made — so anything not starting with SYN is
impossible.

</details>

---

## 🎓 The grown-up version

<details>
<summary><b>Extra depth — open this on a second read, never needed for the pass</b></summary>

**OSI never shipped** as a protocol suite — TCP/IP won, and OSI survived as vocabulary. That's why
real protocols like TLS map onto it awkwardly.

**Layers 5 and 6 barely exist in practice** — apps handle their own sessions (cookies) and formats.

**See encapsulation for real:** open any capture in **Wireshark** and each packet literally expands
as Frame → Ethernet II → Internet Protocol → TCP → HTTP.

**SYN cookies defeat SYN floods:** the server encodes connection details into the SYN-ACK's sequence
number and stores *nothing* until a valid final ACK returns — so a flood can't exhaust a table.

**Layer placement = blind spots.** A layer 3/4 firewall can't see inside HTTPS; a layer 7 WAF must
decrypt TLS to see it. Knowing which layer a device works at tells you what it misses — the logic
behind defence in depth.

**Tunnelling** wraps whole packets inside other packets — a firewall reading the outer header only
sees traffic to the VPN endpoint.

</details>

---

## 📝 Cram lines

Destined for [`EXAM-DAY.md`](../../EXAM-DAY.md):

- **All People Seem To Need Data Processing** (7→1).
- **MAC = 2, IP = 3, Port = 4.** Hub = 1 · Switch = 2 · Router = 3 · basic firewall = 3+4.
- **Data → Segment → Packet → Frame → Bits.**
- **ARP = layer 2. TLS/SSL = layer 6.** The two most-missed placements.
- **TCP** = reliable, connection-oriented; **UDP** = connectionless, fast. **SYN → SYN-ACK → ACK.**
- **TCP/IP: Application (7+6+5) · Transport (4) · INTERNET (3) · Network Access (2+1).**

---

<div align="center">
<sub><a href="../README.md">← back to 04 · Networking and Cloud Security Concepts</a> &nbsp;·&nbsp; <a href="../ip-addressing/">next: IP addressing →</a></sub>
</div>
