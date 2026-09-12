<div align="center">

<img src="assets/module-06-banner.svg" alt="06 · Term Bank" width="100%">

# 🌐 Domain 4 terms · Network Security

[![Module](https://img.shields.io/badge/Module-06_Term_Bank-0d2b33?style=flat-square)](README.md)
[![Domain](https://img.shields.io/badge/Domain-4%20·%2024%25-5C7CFA?style=flat-square)](../04-network-security/README.md)
[![Terms](https://img.shields.io/badge/Terms-95-57606A?style=flat-square)](#)

📌 *Includes the port table — pure memorisation and the best marks-to-effort ratio on the whole exam. Drill it until recall is instant.*

</div>

---

## 🪜 The OSI layers · learn this first

**All People Seem To Need Data Processing** — layers 7 down to 1.

| # | Layer | Address / unit | Devices | Protocols |
|:--:|---|---|---|---|
| **7** | Application | Data | WAF, app gateway | HTTP, FTP, SMTP, DNS, DHCP, SNMP |
| **6** | Presentation | Data | — | **TLS/SSL**, JPEG, ASCII |
| **5** | Session | Data | — | NetBIOS, RPC |
| **4** | Transport | **Port** · **Segment** | Basic firewall (with L3) | **TCP, UDP** |
| **3** | Network | **IP** · **Packet** | **Router** | **IP, ICMP**, IPSec |
| **2** | Data Link | **MAC** · **Frame** | **Switch**, bridge | **ARP**, Ethernet |
| **1** | Physical | **Bit** | **Hub**, repeater, modem | — |

| Term | Meaning |
|---|---|
| **The address rule** | **MAC → 2. IP → 3. Port → 4.** The address tells you the layer |
| **ARP's layer** | **Layer 2.** Most-missed placement — it resolves IP to MAC locally |
| **TLS's layer** | **Layer 6, Presentation**, on this exam |
| **PDU chain going down** | Data → **Segment** → **Packet** → **Frame** → Bits |
| **Encapsulation** | Each layer wrapping the layer above with its own header |
| **TCP/IP model** | **4 layers**: Application (7+6+5), Transport (4), **Internet** (3), Network Access (2+1) |
| **The naming trap** | OSI layer 3 is **Network**; the TCP/IP equivalent is **Internet** |

---

## 🕸️ Network fundamentals

| Term | Meaning |
|---|---|
| **PAN** | Personal Area Network — around one person. Bluetooth |
| **LAN** | Local Area Network — one building or office |
| **MAN** | Metropolitan Area Network — a city or campus |
| **WAN** | Wide Area Network — large geographic area. The internet is the largest |
| **Intranet** | The organisation's **private internal** network |
| **Extranet** | Controlled extension to **named external parties** — partners, suppliers |
| **Hub** | Layer 1. **Floods every frame to every port** → eavesdropping risk. Obsolete |
| **Switch** | Layer 2. Forwards by **MAC**, only to the right port. **Within** a network |
| **Router** | Layer 3. Forwards by **IP**. **Between** networks |
| **Bridge** | Connects two segments. An early, simpler switch |
| **Access point** | Provides wireless connection into a wired network |
| **Gateway** | Connects networks using different protocols; translates |
| **Bus topology** | One shared cable. **One break kills the whole network** |
| **Star topology** | All devices to a central point. **Most common.** Central single point of failure |
| **Ring topology** | Each device to two neighbours, forming a loop |
| **Mesh topology** | Multiple interconnections. **Most resilient**, most expensive |
| **Bandwidth** | How much data a link can carry |
| **Latency** | How long data takes to arrive |

---

## 🔄 TCP, UDP and the handshake

| Term | Meaning |
|---|---|
| **TCP** | **Connection-oriented, reliable**, acknowledged, retransmits, ordered. Slower |
| **UDP** | **Connectionless, unreliable**, no acknowledgement, no ordering. **Faster** |
| **Three-way handshake** | **SYN → SYN-ACK → ACK** |
| **TCP uses** | Web, email, file transfer — anything that must arrive intact |
| **UDP uses** | Streaming, voice, video, DNS queries, gaming |

---

## 🔢 IP addressing

| Term | Meaning |
|---|---|
| **IPv4** | **32-bit**, four dotted decimal octets: `192.0.2.15` |
| **IPv6** | **128-bit**, hex groups with colons. Exists because IPv4 ran out. **IPSec built in** |
| **Private range 1** | `10.0.0.0/8` — `10.0.0.0` to `10.255.255.255` |
| **Private range 2** | `172.16.0.0/12` — **`172.16` to `172.31` ONLY** |
| **Private range 3** | `192.168.0.0/16` |
| **The 172 trap** | `172.15.x.x` and `172.32.x.x` are **PUBLIC** |
| **`127.0.0.1`** | **Loopback** — this device itself |
| **`169.254.x.x`** | **APIPA** — the device self-assigned because **DHCP FAILED** |
| **Subnet mask** | Defines which part of an address is network and which is host |
| **Default gateway** | The router a device uses for destinations outside its own network |
| **DHCP** | **Gives** you an IP address, mask, gateway and DNS servers automatically |
| **DNS** | Resolves **names → IP addresses** |
| **NAT** | Translates **private ↔ public** addresses. **Purpose: address conservation** |
| **NAT's status** | **NOT a security control and NOT a firewall.** Obscurity is a side effect |
| **DNSSEC** | **Authenticity and integrity** of DNS answers. **It signs; it does not encrypt** |
| **Rogue DHCP server** | Hands clients a malicious gateway or DNS server |
| **DNS cache poisoning** | Corrupting a resolver so a name points to an attacker's address |

---

## 🚪 The port table · memorise this

| Port | Protocol | TCP/UDP | Secure? |
|:--:|---|:--:|:--:|
| **20, 21** | **FTP** | TCP | ❌ cleartext |
| **22** | **SSH / SFTP / SCP** | TCP | ✅ |
| **23** | **Telnet** | TCP | ❌ **never use** |
| **25** | **SMTP** — sends mail | TCP | ❌ |
| **53** | **DNS** | **UDP** | ❌ |
| **67, 68** | **DHCP** | UDP | ❌ |
| **69** | **TFTP** | UDP | ❌ |
| **80** | **HTTP** | TCP | ❌ cleartext |
| **110** | **POP3** — downloads and removes | TCP | ❌ |
| **143** | **IMAP** — leaves mail on the server | TCP | ❌ |
| **161, 162** | **SNMP** | UDP | ❌ (v1/v2) |
| **389** | **LDAP** | TCP | ❌ |
| **443** | **HTTPS** | TCP | ✅ |
| **445** | **SMB** | TCP | — |
| **636** | **LDAPS** | TCP | ✅ |
| **3389** | **RDP** | TCP | — |

| Term | Meaning |
|---|---|
| **Well-known ports** | **0–1023** |
| **Registered ports** | 1024–49151 |
| **Dynamic / ephemeral** | 49152–65535 |
| **Socket** | An IP address and port together — `192.0.2.10:443` |
| **Replace Telnet(23)** | With **SSH (22)** |
| **Replace FTP(21)** | With **SFTP (22)** |
| **Replace HTTP(80)** | With **HTTPS (443)** |
| **Replace LDAP(389)** | With **LDAPS (636)** |
| **SFTP vs FTPS** | SFTP = over **SSH**, port 22. FTPS = FTP with **TLS**, 989/990 |
| **Mail direction** | **SMTP sends. POP3 and IMAP receive** |

---

## ☠️ Threats and malware

| Term | Meaning |
|---|---|
| **Script kiddie** | Unskilled, uses others' tools. Lowest capability |
| **Hacktivist** | Motivated by a political or social cause |
| **Organised crime** | Motivated by **money**. High capability, professional |
| **APT** | Well-resourced, **persistent, long-term covert access**. Usually state-linked. Highest |
| **Insider threat** | Originates from someone with **legitimate access** |
| **Insider reality** | **Most insider incidents are NEGLIGENT**, not malicious |
| **Virus** | Attaches to a file. **Needs a user to run it** |
| **Worm** | **Spreads by itself** over a network. No user action |
| **Trojan** | **Disguised** as legitimate software; the user installs it |
| **Ransomware** | Encrypts data and demands payment. **An availability attack** |
| **Spyware** | Covertly gathers information |
| **Rootkit** | **HIDES** itself and other malware, often below the OS |
| **Backdoor** | **OPENS** a concealed route bypassing authentication |
| **Logic bomb** | Malicious code triggered by a **condition** — a date, an account disabled |
| **Keylogger** | Records keystrokes. Software or hardware |
| **Botnet** | Many compromised hosts under one attacker's control |
| **Fileless malware** | Runs in memory using legitimate system tools |
| **Zero-day** | **No patch exists** and the vendor does not know |
| **Unpatched** | A fix **exists** but was not applied. **Not the same as zero-day** |

---

## 🎣 Social engineering

| Term | Meaning |
|---|---|
| **Social engineering** | Manipulating **people** rather than technology |
| **Phishing** | Fraudulent email sent **broadly** |
| **Spear phishing** | **Targeted** at a specific individual or organisation |
| **Whaling** | Spear phishing aimed at a **senior executive** |
| **Vishing** | By **voice** — a phone call |
| **Smishing** | By **SMS** |
| **Pretexting** | Inventing a scenario to establish false legitimacy |
| **Baiting** | Leaving infected media where someone will use it |
| **Shoulder surfing** | Watching someone enter credentials |
| **Dumpster diving** | Retrieving information from discarded material |
| **The defence** | **Security awareness training.** The vulnerability is human |

---

## 💥 Attacks

| Term | Meaning |
|---|---|
| **DoS** | Making a resource unavailable. **One source** |
| **DDoS** | The same from **many** sources. The extra **D is Distributed** |
| **SYN flood** | Many SYNs, never completing the handshake, filling the half-open table |
| **Amplification / reflection** | Small spoofed requests to services returning far larger replies |
| **On-path attack** | The attacker relays between two parties. **ACTIVE.** Formerly man-in-the-middle |
| **Eavesdropping / sniffing** | **PASSIVE** capture. Modifies nothing, hard to detect |
| **IP spoofing** | Forging the source IP address |
| **MAC spoofing** | Forging a hardware address, often to bypass MAC filtering |
| **ARP spoofing / poisoning** | False ARP replies so traffic for the gateway goes to the attacker |
| **Replay attack** | Capturing valid data and **re-sending it later**. **Encryption does not stop it** |
| **Replay defence** | **Timestamps, sequence numbers, nonces** |
| **Session hijacking** | Taking over an **already authenticated** session with a stolen token |
| **SQL injection** | Database commands in an input field. Attacks the **database** |
| **XSS** | Script injected into a page, run in **other users' browsers** |
| **Command injection** | OS commands passed through an application input |
| **Buffer overflow** | Writing more data than the allocated memory holds |
| **Injection defence** | **Input validation** and parameterised queries |
| **Brute force** | Tries **every** combination. Defeated by **account lockout** |
| **Dictionary attack** | Tries a **prepared list** of likely passwords |
| **Password spraying** | **One password across many accounts** — to **evade lockout** |
| **Credential stuffing** | Username/password **pairs breached elsewhere**. Exploits reuse |
| **Rainbow table** | Precomputed hash lookups. **Defeated by salting** |
| **Side-channel attack** | Deducing secrets from **timing, power draw or emissions** |
| **Privilege escalation** | An attacker gaining rights never granted |

---

## 🔥 Defence devices

| Term | Meaning |
|---|---|
| **Firewall** | Permits or denies traffic against a ruleset. **Layers 3–4** in the basic model |
| **Packet-filtering firewall** | Examines **each packet alone**. **Stateless** |
| **Stateful firewall** | **Tracks connections**; permits return traffic for sessions you started |
| **NGFW** | Adds application awareness and deeper inspection |
| **Default deny** | Block everything, permit by exception. The expected posture |
| **IDS** | **Detects and ALERTS.** Out of band, gets a copy. **Passive. Detective** |
| **IPS** | **Detects and BLOCKS.** In line, all traffic passes through. **Active. Preventive** |
| **NIDS / NIPS** | Network-based, monitoring a segment |
| **HIDS / HIPS** | Host-based, monitoring one system |
| **Signature-based detection** | **Known patterns.** Accurate, **cannot catch zero-days** |
| **Anomaly-based detection** | Baseline deviation. **Catches unknown attacks**, more false positives |
| **False positive** | Legitimate activity flagged. **Costly** — and on an IPS it blocks real traffic |
| **False negative** | **A real attack missed. The dangerous error** |
| **Forward proxy** | Sits in front of **CLIENTS**. Filtering, caching, monitoring outbound |
| **Reverse proxy** | Sits in front of **SERVERS**. Load balancing, TLS termination |
| **WAF** | A reverse proxy filtering HTTP at **layer 7**, defending web applications |

---

## 🧱 Segmentation, VPNs, cloud

| Term | Meaning |
|---|---|
| **Segmentation** | Dividing the network into controlled zones. **Limits LATERAL MOVEMENT** |
| **Flat network** | Everything can reach everything. The dangerous default |
| **Lateral movement** | An attacker moving sideways after an initial compromise |
| **VLAN** | A **logical** segment in switch configuration. **VLAN hopping exists** |
| **DMZ / screened subnet** | A **semi-trusted** zone for internet-facing services |
| **The DMZ rule** | The internet may reach the DMZ; **the DMZ must NOT freely reach the internal network** |
| **Bastion host** | A hardened, deliberately exposed host |
| **Jump box** | A controlled host through which admins reach sensitive segments |
| **Microsegmentation** | Segmentation down to individual workloads |
| **Air gap** | **Complete physical isolation.** Strongest, still not absolute |
| **VPN** | An encrypted tunnel across an untrusted network |
| **What a VPN protects** | **Data in transit between the two endpoints.** NOT the endpoints, NOT data at rest |
| **Site-to-site VPN** | Joins two **networks**. Always on, transparent |
| **Remote access VPN** | Joins one **device**. User-initiated |
| **Split tunnelling** | Only corporate traffic tunnelled. Faster, **bypasses inspection** |
| **Full tunnelling** | **All** traffic tunnelled. **More secure** |
| **IPSec** | Secures IP traffic at **layer 3** |
| **Tunnel mode** | Encrypts the **whole original packet**. Site-to-site |
| **Transport mode** | Encrypts the **payload only** |
| **WEP** | **Broken.** Never acceptable |
| **WPA2** | Acceptable, AES-based |
| **WPA3** | **Current and strongest** |
| **Evil twin** | A rogue AP **impersonating a legitimate SSID** |
| **Rogue access point** | Any **unauthorised** access point |
| **Hidden SSID / MAC filtering** | **Obscurity, not security.** The control is encryption |
| **IaaS** | You manage **OS + apps + data**. **You patch the OS** |
| **PaaS** | You manage **apps + data** |
| **SaaS** | You manage **data + access only** |
| **Every model** | **Data, users and access are always yours.** Accountability never transfers |
| **Public cloud** | Shared, open to anyone |
| **Private cloud** | Dedicated to one organisation |
| **Hybrid cloud** | Public and private combined |
| **Community cloud** | Shared by orgs with **common requirements**. The forgotten one |
| **Type 1 hypervisor** | **Bare metal.** More efficient and more secure |
| **Type 2 hypervisor** | Runs on a **host OS** |
| **VM escape** | Breaking out of a guest to reach the hypervisor or other VMs |
| **Container isolation** | Containers **share the host kernel** → **WEAKER** than VMs |
| **Cloud breach cause** | **Customer misconfiguration** — not provider failure |
| **CASB** | A control point enforcing policy between users and cloud services |
| **Zero trust** | **"Never trust, always verify."** No trust based on **network location** |
| **Zero trust principles** | **Verify explicitly · least privilege · assume breach** |
| **SLA** | Measurable service levels with remedies. **Binding** |
| **MOU** | A statement of **intent**. **Usually NOT legally binding** |
| **MOA** | More formal than an MOU; sets out responsibilities |
| **MSA** | The binding **master** contract. The umbrella |
| **SOW** | The **specific work** under an MSA |
| **NDA** | Protects confidential information shared between parties |

---

<div align="center">
<sub><a href="README.md">← back to 06 · Term Bank</a> &nbsp;·&nbsp; <a href="domain-05-terms.md">Domain 5 terms →</a></sub>
</div>
