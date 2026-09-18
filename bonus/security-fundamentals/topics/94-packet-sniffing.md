# 👃📦 Packet Sniffing — Caveman Style

**Section:** Common Network Attacks &nbsp;·&nbsp; **Topic:** 94 of 290 &nbsp;·&nbsp; **Level:** 🟢 Beginner

**Packet sniffing** means **capturing and examining network packets** as they travel across a network.

Think:

> 🪨 Grog sits beside the network path and **listens to the packets going past**.

```
💻 Grog
   │
   │ 📦📦📦 packets
   ↓
👃🕵️ Sniffer
   ↓
💻 Destination
```

The sniffer is trying to **observe network traffic**.

---

# 🧠 The Key Exam Idea

> **Packet sniffing = capture network traffic and inspect it.**

Think:

> 👃 **"Sniff the packets."**

The important words are:

> **Capture + Analyze network traffic**

---

# 📦 What Is a Packet?

A **packet is a unit of network data**.

For example:

```
📦 Packet
├── Source IP
├── Destination IP
├── Protocol information
└── Payload
```

A packet sniffer can **examine available information** in these packets.

---

# 🔍 What Can a Sniffer See?

It **depends heavily on whether the traffic is encrypted**.

For **unencrypted traffic**, a sniffer may be able to see things such as:

- 🌐 Source/destination IP addresses
- 🔢 Ports
- 📡 Protocols
- 📄 Application data
- 👤 Potentially credentials or other sensitive information

For **encrypted traffic**, the sniffer can generally **still see some metadata**, but the **protected application content is not readable** without the appropriate decryption capability/keys.

---

# 🔓 Unencrypted Example

Imagine Grog uses an **unencrypted protocol**:

```
👤 Grog
   ↓
📄 "username = Grog"
📄 "password = secret"
   ↓
👃 Sniffer
   ↓
👀 Can potentially read the content
```

**That's dangerous.**

This is one reason security professionals **prefer encrypted protocols**.

---

# 🔐 Encrypted Example

Now Grog uses **HTTPS**:

```
👤 Grog
   ↓
🔒 HTTPS
   ↓
📦 Encrypted traffic
   ↓
👃 Sniffer
   ↓
👀 Can capture packets
   ↓
❌ Cannot simply read the protected HTTP content
```

> [!IMPORTANT]
> **Encryption does not necessarily stop packet capture.**
>
> It makes the captured content **much harder to understand**.

<p align="center"><img src="diagrams/1.svg" alt="diagram"></p>

> 🧠 **Either way the sniffer captures the packets and still sees metadata** — encryption only hides the content.

---

# 🆚 Sniffing vs Port Scanning

These are **different**.

### 🔍 Port scanning

Asks:

> **"What ports/services are available?"**

```
🚪 22  → Open?
🚪 80  → Open?
🚪 443 → Open?
```

### 👃 Packet sniffing

Asks:

> **"What traffic is traveling across the network?"**

```
📦 HTTP
📦 DNS
📦 TCP
📦 UDP
📦 IP
```

### 🧠 Memory:

> 🔍 **Port scan = knock on doors**

> 👃 **Packet sniff = listen to traffic**

---

# 🆚 Sniffing vs Spoofing

Another **common exam trap**.

### 👃 Packet sniffing

> **Observe/capture traffic**

### 🎭 Spoofing

> **Pretend to be someone/something else**

For example:

> An attacker sends traffic pretending to have another source IP address.

→ **IP spoofing**

So:

> 👃 **Sniff = watch**

> 🎭 **Spoof = pretend**

<p align="center"><img src="diagrams/2.svg" alt="diagram"></p>

---

# 🛡️ Passive vs Active

Packet sniffing is often described as **passive** when the attacker **simply observes traffic without modifying or injecting packets**.

Think:

> 🪨 Grog hides behind a rock and listens.

```
💻 ─────📦─────→ 💻
          👃
         Grog
```

He's **not changing the conversation**.

## Active attacks

An attacker may instead **inject or manipulate** traffic.

Think:

> 🪨 Grog doesn't just listen — he **throws his own fake messages into the conversation**.

<p align="center"><img src="diagrams/3.svg" alt="diagram"></p>

---

# 📡 Where Can Sniffing Happen?

It **depends on the network technology and configuration**.

On a **switched Ethernet network**, a normal switch generally sends **unicast traffic only toward the relevant port** rather than broadcasting it everywhere.

Therefore, an attacker **usually can't simply plug into a random switch port** and automatically see everyone's unicast traffic.

However, traffic can potentially be exposed through things such as:

- Misconfigured networks
- Network taps
- Port mirroring/SPAN
- Compromised infrastructure
- Wireless environments
- Man-in-the-middle situations

<p align="center"><img src="diagrams/4.svg" alt="diagram"></p>

---

# 📶 Wireless Sniffing

**Wireless traffic travels through the air.**

```
📱 Grog
   ))))
   📡 Wi-Fi
   ((((
      👃
    Sniffer
```

A nearby device **may be able to capture wireless frames** that it can receive, although **encryption and network configuration determine what the captured traffic reveals**.

---

# 🛡️ How Do You Defend Against Sniffing?

The biggest answer:

> 🔐 **Encryption**

Use secure protocols such as:

- **HTTPS** instead of HTTP
- **SSH** instead of Telnet
- **SFTP** instead of FTP
- **TLS-protected email** where appropriate
- **Strongly secured Wi-Fi**

Also use:

- 🔒 VPNs where appropriate
- 🛡️ Network segmentation
- 📊 Monitoring
- 🔐 Secure Wi-Fi configuration

### 🧠 Core idea:

> **If someone captures the packets, encryption makes the sensitive content much harder to read.**

| ❌ Sniffable (plaintext) | ✅ Replace with (encrypted) |
| --- | --- |
| HTTP | **HTTPS** |
| Telnet | **SSH** |
| FTP | **SFTP** |
| Plain SMTP/IMAP/POP3 | **TLS-protected email** |
| Open / weak Wi-Fi | **WPA2/WPA3** |

---

# 🎯 Exam Scenarios

### Scenario 1

> A security analyst captures network packets and examines their headers and payloads.

→ 👃 **Packet sniffing**

### Scenario 2

> An attacker captures unencrypted network traffic and obtains usernames and passwords.

→ 👃 **Packet sniffing**

### Scenario 3

> An attacker checks TCP ports 22, 80, and 443 to see which are open.

→ 🔍 **Port scanning**

### Scenario 4

> An attacker changes the source address to impersonate another host.

→ 🎭 **Spoofing**

### Scenario 5

> A defender captures traffic to troubleshoot a network problem.

→ 👃 **Packet capture/sniffing** — **not necessarily malicious**.

---

# 🧠 Layer Connection

Packet sniffing can **involve multiple layers** because packets contain information from different layers.

For example:

```
🖼️ Ethernet frame       → Layer 2
      ↓
📦 IP packet             → Layer 3
      ↓
📦 TCP segment           → Layer 4
      ↓
🌐 HTTP                  → Layer 7
```

A packet analyzer can **inspect information from many of these layers**.

---

# 🧪 Wireshark

A well-known **packet-analysis tool** is **Wireshark**.

Think:

> 👃 **Wireshark = magnifying glass for network traffic**

A security professional can use it to:

- Capture packets
- Inspect protocols
- Troubleshoot networks
- Investigate suspicious traffic
- Analyze communication

The **tool itself is not inherently malicious**.

---

## 🧪 Quick Check

**1. What is packet sniffing?**
<details><summary>Answer</summary>Capturing and analyzing network traffic (packets) as it travels across a network.</details>

**2. An attacker captures Telnet traffic and reads an admin's password. Why was this possible?**
<details><summary>Answer</summary>Telnet is unencrypted, so the credentials travel in plaintext and are readable in the captured packets.</details>

**3. True or False: Encryption prevents an attacker from capturing packets.**
<details><summary>Answer</summary>False. Packets can still be captured, and metadata like IPs and ports is still visible — encryption makes the content unreadable without the keys.</details>

**4. What is the difference between sniffing, port scanning and spoofing?**
<details><summary>Answer</summary>Sniffing = listen to/capture traffic. Port scanning = knock on ports to find open services. Spoofing = pretend to be someone else (e.g. fake source IP).</details>

**5. Why is sniffing often called a passive attack?**
<details><summary>Answer</summary>The attacker only observes traffic without modifying or injecting packets, which also makes it hard to detect.</details>

**6. Why can't an attacker usually see everyone's unicast traffic just by plugging into a random switch port?**
<details><summary>Answer</summary>A switch forwards unicast frames only to the destination's port, not to every port.</details>

**7. Name three ways traffic can still be exposed on a switched network.**
<details><summary>Answer</summary>Any three of: port mirroring/SPAN, network taps, misconfiguration, compromised infrastructure, wireless, man-in-the-middle.</details>

**8. Name the secure replacement for each: HTTP, Telnet, FTP.**
<details><summary>Answer</summary>HTTPS, SSH, SFTP.</details>

**9. A network engineer uses Wireshark to troubleshoot slow connections. Is this an attack?**
<details><summary>Answer</summary>No. Packet capture is a legitimate troubleshooting and investigation technique — Wireshark isn't inherently malicious; intent and authorization matter.</details>

## 🧠 Remember This

```
👃 PACKET SNIFFING

= Capture + inspect network traffic

📦 Can inspect:
   IPs
   Ports
   Protocols
   Payloads (if accessible)

🔓 Unencrypted traffic
   → Sensitive content may be readable

🔐 Encrypted traffic
   → Content is protected from simple inspection

🔍 Port scanning
   → "What services are exposed?"

👃 Packet sniffing
   → "What traffic is traveling?"

🎭 Spoofing
   → "Pretend to be someone else"

🧪 Wireshark
   → Packet-analysis tool
```

### 🎯 One-line exam answer:

> **Packet sniffing is the capture and analysis of network traffic; encryption such as HTTPS/TLS protects sensitive application data from being readable simply by capturing the packets.**
