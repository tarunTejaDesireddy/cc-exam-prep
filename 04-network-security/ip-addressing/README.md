<div align="center">

<img src="../assets/module-04-banner.svg" alt="04 · Networking and Cloud Security Concepts" width="100%">

# 🔢 IP Addressing

### *Public vs private addresses, and the three services that hand out, find and swap them*

[![Module](https://img.shields.io/badge/Module-04_Network_Security-0d2b33?style=flat-square)](../README.md)
[![Domain](https://img.shields.io/badge/Domain-4%20·%2021.3%25-5C7CFA?style=flat-square)](../README.md)
[![Read](https://img.shields.io/badge/Read-~12%20min-57606A?style=flat-square)](#)

📌 *Recognise the private ranges on sight (watch 172.16–31), know 169.254 means DHCP failed, and say what DHCP, DNS and NAT each do.*

</div>

---

## 🧸 The big idea

In an apartment building, **"Flat 3B"** only means something inside the building — a hundred other
buildings have a Flat 3B. The building's **street address** is what the outside world uses.

- Flat numbers = **private** addresses (reused everywhere, meaningless outside).
- The street address = the **public** address.

Three helpers keep it working:

- The concierge who **gives** new tenants a flat number → **DHCP**.
- The lobby directory that **finds** "Sara Ali → Flat 3B" → **DNS**.
- The mailroom that stamps the **street address** on all outgoing post → **NAT**.

---

## 📖 Words you will keep seeing

| Word | What it means on this exam |
|---|---|
| **IP address** | The layer 3 address of a host. |
| **IPv4** | **32-bit**, four decimal numbers: `192.0.2.15`. |
| **IPv6** | **128-bit**, hex groups with colons: `2001:db8::1`. |
| **Public address** | Globally unique and routable on the internet. |
| **Private address** | Reserved for internal use; **not** routable on the internet. |
| **Subnet mask** | Marks which part of an address is the network and which is the host. |
| **Default gateway** | The router a device sends traffic to when the destination is outside its network. |
| **DHCP** | Automatically **assigns** IP settings to devices. |
| **DNS** | **Resolves names** like `example.com` to IP addresses. |
| **NAT** | **Translates** private addresses to a public one on the way out, and back. |
| **Loopback** | `127.0.0.1` (or `::1`) — the device talking to itself. |
| **APIPA** | `169.254.x.x` — self-assigned when DHCP fails. |

---

## 🔍 The explanation

### IPv4 vs IPv6

| | **IPv4** | **IPv6** |
|---|---|---|
| Size | **32 bits** | **128 bits** |
| Written as | `192.0.2.15` | `2001:db8::8a2e:370:7334` |
| Space | ~4.3 billion | Effectively unlimited |
| NAT | Widely needed | Not needed |
| IPsec | Optional add-on | Built into the design |

**IPv6 exists because IPv4 ran out of addresses.**

### The private ranges — memorise these

<p align="center"><img src="diagrams/1.svg" alt="The private ranges never routed on the internet are 10.0.0.0 to 10.255.255.255, 172.16.0.0 to 172.31.255.255 only, and 192.168.0.0 to 192.168.255.255" width="720"></p>

> [!CAUTION]
> **The 172 range is where marks are lost.** Only **172.16 to 172.31** is private. `172.15.x.x` and
> `172.32.x.x` are **public**. Exam options are chosen to sit just outside the range.

### Classify any address in three questions

<p align="center"><img src="diagrams/2.svg" alt="If an address starts with 127 it is loopback, this device itself; if it starts with 169.254 it is APIPA meaning DHCP failed; if it is in 10, 172.16 to 31 or 192.168 it is private and not internet-routable; otherwise it is public" width="520"></p>

| Special address | Meaning |
|---|---|
| `127.0.0.1` | Loopback — this device itself |
| `169.254.x.x` | APIPA — **DHCP failed**; the device gave itself an address |
| `255.255.255.255` | Broadcast to the local network |
| `0.0.0.0` | Unspecified / "all addresses" |

### The three services

<p align="center"><img src="diagrams/3.svg" alt="DHCP gives you an address when you join, DNS finds an address from a name, and NAT swaps private for public on the way out" width="760"></p>

**📋 DHCP** — gives a device its IP address, subnet mask, default gateway and DNS server when it
joins. *Risk:* a **rogue DHCP server** hands out an attacker's gateway or DNS server (defence: DHCP
snooping on switches).

**🔤 DNS** — turns `example.com` into an IP address. *Risks:* **DNS spoofing / cache poisoning**
(a name secretly resolves to the attacker's site) and **DNS tunnelling** (data smuggled out inside
DNS queries). **DNSSEC** signs answers so they can be verified.

> ⚠️ **DNSSEC gives authenticity and integrity — NOT confidentiality.** It proves an answer is
> genuine; it doesn't encrypt the query.

**🔀 NAT** — many private hosts leave through one public address:

<p align="center"><img src="diagrams/4.svg" alt="Three PCs with private addresses 192.168.1.10, .11 and .12 go through a NAT device that rewrites the source and remembers who was who, and all leave as one public address 203.0.113.5" width="700"></p>

Its **purpose is address conservation**. Hiding internal addresses is a **side effect**.

> [!IMPORTANT]
> **NAT is not a security control and not a firewall.** It translates; it doesn't inspect, filter
> or enforce a policy.

---

## ⚖️ Told apart

| | Does | Not to be confused with |
|---|---|---|
| **DHCP** | **Assigns** your address. | **DNS** — **finds** someone else's address from a name. |
| **DNS** | Name → IP. | **ARP** — IP → MAC, inside the local network. |
| **NAT** | Translates private ↔ public. | **A firewall** — inspects and filters by rules. |
| **Private** | Reserved, not routable. | **Public** — globally unique, routable. |
| **Static** | Manually set, fixed. | **Dynamic** — from DHCP, may change. |
| **`169.254.x.x`** | DHCP failed. | A normal private range. |
| **DNSSEC** | Signs DNS answers. | **Encryption** — it doesn't hide anything. |

---

## ⚠️ Where your instinct is wrong

> [!WARNING]
> **In the job:** NAT really does reduce exposure — unsolicited inbound traffic has nowhere to go.
>
> **On the exam:** **NAT is not a security control.** Purpose = address conservation; obscurity =
> side effect. Never pick "NAT replaces a firewall".

> [!WARNING]
> **In the job:** any `172.` address reads as private.
>
> **On the exam:** only **172.16–172.31**.

---

## 🧠 How to remember it

**Private: 10 · 172.16–31 · 192.168.**

**DHCP gives · DNS finds · NAT swaps.**

**IPv4 = 32 bits · IPv6 = 128 bits.**

**169.254 means DHCP died.**

---

## ✅ Check you actually got it

Answer all five before expanding anything.

**Q1.** Which of the following is a **public** IP address?

- **A.** `10.15.200.4`
- **B.** `172.20.5.1`
- **C.** `172.35.5.1`
- **D.** `192.168.50.10`

<details>
<summary><b>Answer</b></summary>

**C.** 35 is outside 16–31.

- **A** is in 10.x — private.
- **B** — 20 is inside 16–31 — private.
- **D** is in 192.168.x — private.

</details>

**Q2.** A workstation can't reach network resources and has the address `169.254.12.88`. What is
the MOST likely cause?

- **A.** The workstation has been assigned a public address in error
- **B.** The DHCP server is unavailable, so the workstation self-assigned an APIPA address
- **C.** DNS resolution has failed
- **D.** The default gateway is misconfigured

<details>
<summary><b>Answer</b></summary>

**B.** The address itself is the diagnosis.

- **A** — 169.254 is a reserved self-assignment range.
- **C** — the host would still have a normal DHCP address.
- **D** — same: it would still hold a normal address.

</details>

**Q3.** What is the PRIMARY purpose of NAT?

- **A.** To encrypt traffic leaving the internal network
- **B.** To conserve public IP addresses by allowing many hosts to share one
- **C.** To filter inbound traffic according to a security policy
- **D.** To resolve domain names to IP addresses

<details>
<summary><b>Answer</b></summary>

**B.**

- **A** — NAT encrypts nothing.
- **C** — that's a firewall; the most tempting distractor.
- **D** — that's DNS.

</details>

**Q4.** Which service gives a client its IP address, subnet mask, default gateway and DNS server?

- **A.** DNS
- **B.** NAT
- **C.** DHCP
- **D.** ARP

<details>
<summary><b>Answer</b></summary>

**C — DHCP.**

- **A** resolves names (DHCP tells the client *which* DNS server to use — why they get swapped).
- **B** works at the edge; assigns nothing.
- **D** resolves IP → MAC.

</details>

**Q5.** Which statement about IPv6 is correct?

- **A.** IPv6 uses 64-bit addresses written in decimal
- **B.** IPv6 uses 128-bit addresses and was developed to address IPv4 exhaustion
- **C.** IPv6 requires NAT to function on the public internet
- **D.** IPv6 cannot support encryption

<details>
<summary><b>Answer</b></summary>

**B.**

- **A** — 128-bit, hexadecimal.
- **C** — the point of IPv6 is that NAT isn't needed.
- **D** — IPsec is built in.

</details>

---

## 🎓 The grown-up version

<details>
<summary><b>Extra depth — open this on a second read, never needed for the pass</b></summary>

**How DNS lookups travel.** Your resolver asks a **root** server ("ask .com"), then the **.com TLD**
server ("ask this one"), then the **authoritative** server (the real IP) — and **caches** the answer
for its TTL. **Cache poisoning** races forged replies guessing the 16-bit transaction ID; win once and
everyone using that resolver is misdirected until the TTL expires. **DNSSEC** signs answers (RRSIG,
checked against DNSKEY) so forgeries fail.

**NAT's security reputation is contested.** No port-forward = no unsolicited inbound, which is real.
But it's a side effect, not an auditable policy, and it does nothing about outbound or user-initiated
traffic.

**IPv6 privacy.** Early IPv6 built addresses from the MAC — a trackable ID everywhere you went.
Privacy extensions now use random temporary addresses.

**CIDR:** `/24` = 24 network bits, 256 addresses (254 usable). Smaller number = bigger network.

</details>

---

## 📝 Cram lines

Destined for [`EXAM-DAY.md`](../../EXAM-DAY.md):

- **Private: 10.0.0.0/8 · 172.16–172.31 (/12) · 192.168.0.0/16.** 172.15 and 172.32 are PUBLIC.
- **127.x = loopback. 169.254.x = APIPA → DHCP failed.**
- **DHCP gives · DNS finds · NAT swaps.**
- **NAT's purpose = address conservation. NOT a security control, NOT a firewall.**
- **IPv4 32-bit · IPv6 128-bit** (IPsec built in). **DNSSEC = authenticity, not confidentiality.**

---

<div align="center">
<sub><a href="../README.md">← back to 04 · Networking and Cloud Security Concepts</a> &nbsp;·&nbsp; <a href="../ports-and-protocols/">next: Ports and protocols →</a></sub>
</div>
