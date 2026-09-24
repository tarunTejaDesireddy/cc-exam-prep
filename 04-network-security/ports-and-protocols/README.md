<div align="center">

<img src="../assets/module-04-banner.svg" alt="04 · Networking and Cloud Security Concepts" width="100%">

# 🚪 Ports and Protocols

### *The IP address finds the machine — the port finds the program*

[![Module](https://img.shields.io/badge/Module-04_Network_Security-0d2b33?style=flat-square)](../README.md)
[![Domain](https://img.shields.io/badge/Domain-4%20·%2021.3%25-5C7CFA?style=flat-square)](../README.md)
[![Read](https://img.shields.io/badge/Read-~11%20min-57606A?style=flat-square)](#)

📌 *Memorise the port table, know 0–1023 is well-known, pair every cleartext protocol with its secure replacement, and SMTP sends while POP/IMAP receive.*

</div>

---

## 🧸 The big idea

An office building has **one street address**, but inside there are many **room numbers** — reception,
accounts, IT. The street address gets you to the right **building**; the room number gets you to the
right **person inside**.

Networking is the same: the **IP address** gets traffic to the right **machine**; the **port number**
gets it to the right **program** on that machine.

<p align="center"><img src="diagrams/1.svg" alt="The IP address 203.0.113.5 finds the machine; on that one server, port 443 leads to the web server, port 25 to the mail server and port 22 to SSH" width="620"></p>

Ports live at **layer 4**, alongside TCP and UDP.

The second big idea: most classic protocols send everything in **cleartext** — like shouting through a
window. Each has a **secure replacement**, and "which protocol should replace this one?" is a whole
question type.

---

## 📖 Words you will keep seeing

| Word | What it means on this exam |
|---|---|
| **Port** | A 16-bit number identifying a service/program on a host. Layer 4. |
| **Well-known ports** | **0–1023** — standard services. |
| **Registered ports** | 1024–49151 — assigned to specific applications. |
| **Dynamic / ephemeral** | 49152–65535 — temporary, used by clients. |
| **Socket** | IP + port together, e.g. `192.0.2.10:443`. |
| **Cleartext protocol** | Sends data unencrypted — readable by anyone in the path. |

---

## 🔍 The explanation

### The port ranges

<p align="center"><img src="diagrams/2.svg" alt="Ports 0 to 1023 are well-known standard services, 1024 to 49151 are registered to specific applications, and 49152 to 65535 are dynamic temporary client-side ports" width="760"></p>

> 🎯 **0–1023 = well-known.** That boundary is asked directly.

### The ports to memorise

The best marks-per-minute on the whole exam. Learn it cold:

| Port | Protocol | What it does | TCP/UDP | Secure? |
|:--:|---|---|:--:|:--:|
| **20, 21** | **FTP** | File transfer | TCP | ❌ |
| **22** | **SSH / SFTP / SCP** | Secure shell and file transfer | TCP | ✅ |
| **23** | **Telnet** | Remote terminal | TCP | ❌ **never use** |
| **25** | **SMTP** | **Sending** email | TCP | ❌ |
| **53** | **DNS** | Name resolution | **UDP** (and TCP) | ❌ |
| **67, 68** | **DHCP** | Automatic IP settings | UDP | ❌ |
| **69** | **TFTP** | Trivial file transfer | UDP | ❌ |
| **80** | **HTTP** | Web | TCP | ❌ |
| **110** | **POP3** | Retrieve email (download) | TCP | ❌ |
| **143** | **IMAP** | Retrieve email (stays on server) | TCP | ❌ |
| **161, 162** | **SNMP** | Network device management | UDP | ❌ (v1/v2) |
| **389** | **LDAP** | Directory services | TCP | ❌ |
| **443** | **HTTPS** | Web over TLS | TCP | ✅ |
| **445** | **SMB** | Windows file sharing | TCP | — |
| **636** | **LDAPS** | LDAP over TLS | TCP | ✅ |
| **3389** | **RDP** | Windows remote desktop | TCP | — |

### Insecure → secure

<p align="center"><img src="diagrams/3.svg" alt="Replace cleartext Telnet 23 with SSH 22, FTP 21 with SFTP 22, HTTP 80 with HTTPS 443, and LDAP 389 with LDAPS 636" width="620"></p>

| Insecure | Port | Replace with | Port |
|---|:--:|---|:--:|
| Telnet | 23 | **SSH** | 22 |
| FTP | 21 | **SFTP** | 22 |
| HTTP | 80 | **HTTPS** | 443 |
| LDAP | 389 | **LDAPS** | 636 |
| SNMPv1/v2 | 161 | **SNMPv3** | 161 |
| POP3 / IMAP | 110 / 143 | POP3S / IMAPS | 995 / 993 |

> [!IMPORTANT]
> **Telnet is the exam's favourite "never use this".** It sends credentials in **cleartext**. Admin
> connecting over Telnet → the problem is cleartext credentials → the answer is **SSH**.

> ⚠️ **SFTP ≠ FTPS.** **SFTP** = file transfer over **SSH**, port 22. **FTPS** = FTP with TLS added,
> ports 989/990.

### Email: one protocol out, two back

<p align="center"><img src="diagrams/4.svg" alt="You send email to the mail server with SMTP on port 25; you receive it with POP3 on port 110, which downloads and then removes it, or IMAP on port 143, which keeps it on the server" width="660"></p>

> 🎯 Can't **send** → SMTP. Can't **receive** → POP3 or IMAP.

---

## ⚖️ Told apart

| | Means | Not to be confused with |
|---|---|---|
| **Port 22** | SSH (and SFTP, SCP). | **Port 23** — Telnet, the insecure one. One apart. |
| **Port 80** | HTTP, cleartext. | **Port 443** — HTTPS, encrypted. |
| **POP3 (110)** | Downloads, usually removes from server. | **IMAP (143)** — keeps mail on the server, syncs devices. |
| **SMTP (25)** | **Sends**. | **POP3/IMAP** — **receive**. |
| **SFTP** | Over SSH, port 22. | **FTPS** — FTP + TLS, 989/990. |
| **Port** | The program (layer 4). | **IP address** — the machine (layer 3). |
| **DNS on 53** | **UDP** for normal queries. | TCP — only zone transfers / big answers. |

---

## ⚠️ Where your instinct is wrong

> [!WARNING]
> **In the job:** services run on whatever port you configure.
>
> **On the exam:** the **standard assignment** is the answer — 443 is HTTPS, 22 is SSH.

> [!WARNING]
> **In the job:** nobody memorises ports; you look them up.
>
> **On the exam:** you can't look them up — and they're among the easiest marks available.

> [!WARNING]
> **In the job:** DNS over TCP is common.
>
> **On the exam:** **DNS = UDP 53.**

---

## 🧠 How to remember it

**22 secure, 23 insecure** — one apart.

**80 open, 443 locked.**

**Mail in number order = use order:** 25 SMTP (send) → 110 POP3 (fetch & remove) → 143 IMAP
(fetch & keep).

**Under 1024 is well-known.**

---

## ✅ Check you actually got it

Answer all five before expanding anything.

**Q1.** An administrator manages switches over Telnet. What is the PRIMARY security concern, and
what should replace it?

- **A.** Telnet is slow; SNMP should be used instead
- **B.** Telnet transmits credentials in cleartext; SSH on port 22 should be used
- **C.** Telnet uses UDP and is unreliable; FTP should be used instead
- **D.** Telnet requires a client installation; RDP should be used instead

<details>
<summary><b>Answer</b></summary>

**B.** Anyone capturing the traffic reads the password.

- **A** is performance, and SNMP isn't a terminal.
- **C** — Telnet is TCP; FTP is also cleartext.
- **D** — RDP is a graphical desktop, not a device terminal.

</details>

**Q2.** Which port does HTTPS use?

- **A.** 80
- **B.** 143
- **C.** 443
- **D.** 8080

<details>
<summary><b>Answer</b></summary>

**C — 443.**

- **A** is plain HTTP. **B** is IMAP. **D** is a common alternative HTTP port, not HTTPS.

</details>

**Q3.** A user can receive email but cannot send it. Which protocol is MOST likely affected?

- **A.** POP3 on port 110
- **B.** IMAP on port 143
- **C.** SMTP on port 25
- **D.** DNS on port 53

<details>
<summary><b>Answer</b></summary>

**C — SMTP.** Sending is broken; receiving works.

- **A** and **B** receive — and receiving works.
- **D** would usually break both directions.

</details>

**Q4.** Which range is the well-known ports?

- **A.** 0–1023
- **B.** 1024–49151
- **C.** 49152–65535
- **D.** 0–65535

<details>
<summary><b>Answer</b></summary>

**A.**

- **B** is registered. **C** is dynamic. **D** is the whole port space.

</details>

**Q5.** Which pairing of protocol and port is INCORRECT?

- **A.** SSH — 22
- **B.** DNS — 53
- **C.** RDP — 3389
- **D.** LDAP — 636

<details>
<summary><b>Answer</b></summary>

**D.** LDAP is **389**; **636** is LDAPS. Watch the inverted stem — you're hunting the one *wrong*
pairing.

- **A**, **B** and **C** are all correct.

</details>

---

## 🎓 The grown-up version

<details>
<summary><b>Extra depth — open this on a second read, never needed for the pass</b></summary>

**Why insecure protocols survive:** embedded devices and industrial kit whose vendors are long gone.
The network around them has to compensate — segmentation as a compensating control.

**Ports are a convention, not enforcement.** Attackers put command-and-control on 443 because it's
never blocked outbound — which is why app-aware firewalls identify protocols by behaviour, not
port number.

**Moving SSH to port 2222 is obscurity, not security** — it cuts log noise, but a full scan finds it
in seconds.

**How scanners see ports:** nmap sends a SYN — **SYN-ACK** = open, **RST** = closed, silence or ICMP
unreachable = **filtered** (a firewall). On your own box, `ss -tulnp` / `netstat` reads the kernel's
socket table directly.

**SMTP never had authentication**, hence spoofing and the retrofit of SPF, DKIM and DMARC. Modern
mail submission uses port 587 with authentication; 25 is mostly server-to-server.

</details>

---

## 📝 Cram lines

Destined for [`EXAM-DAY.md`](../../EXAM-DAY.md):

- **20/21 FTP · 22 SSH/SFTP · 23 Telnet · 25 SMTP · 53 DNS (UDP) · 67/68 DHCP · 69 TFTP · 80 HTTP**
- **110 POP3 · 143 IMAP · 161/162 SNMP · 389 LDAP · 443 HTTPS · 445 SMB · 636 LDAPS · 3389 RDP**
- **Well-known = 0–1023.**
- **Telnet→SSH · FTP→SFTP · HTTP→HTTPS · LDAP→LDAPS.** Telnet = cleartext credentials.
- **SMTP sends; POP3/IMAP receive.** SFTP (SSH, 22) ≠ FTPS (TLS, 989/990).

---

<div align="center">
<sub><a href="../README.md">← back to 04 · Networking and Cloud Security Concepts</a> &nbsp;·&nbsp; <a href="../network-threats/">next: Network threats →</a></sub>
</div>
