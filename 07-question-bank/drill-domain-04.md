<div align="center">

<img src="assets/module-07-banner.svg" alt="07 · Question Bank" width="100%">

# 🌐 Drill · Domain 4 · Network Security

[![Module](https://img.shields.io/badge/Module-07_Question_Bank-0d2b33?style=flat-square)](README.md)
[![Questions](https://img.shields.io/badge/Questions-20-5C7CFA?style=flat-square)](#)
[![Domain](https://img.shields.io/badge/Domain-4%20·%2024%25-12B5A5?style=flat-square)](../04-network-security/README.md)

📌 *Answer from the simplified model, not from how it really deploys. That is the trap in this domain.*

</div>

---

**Q1.** At which OSI layer does ARP operate?

- **A.** Layer 1 — Physical
- **B.** Layer 2 — Data Link
- **C.** Layer 3 — Network
- **D.** Layer 4 — Transport

<details><summary><b>Answer</b></summary>

**B — layer 2.** ARP resolves a known IP address to the MAC address needed for local frame
delivery, and it functions at the data link layer.

- **C** is the single most common error here. ARP *involves* IP addresses, which makes layer 3 feel
  right, but its job is enabling layer 2 delivery.
- **A** has no addressing at all.
- **D** is where ports and TCP/UDP live.
</details>

---

**Q2.** Which of these is a **public** IP address?

- **A.** `10.200.15.3`
- **B.** `172.31.255.1`
- **C.** `172.32.0.1`
- **D.** `192.168.100.7`

<details><summary><b>Answer</b></summary>

**C — `172.32.0.1`.** The private `172` range is **`172.16` to `172.31` only**. 32 falls outside
it.

- **A** is inside `10.0.0.0/8`.
- **B** is inside the range — 31 is the last private octet, and this is the boundary being tested.
- **D** is inside `192.168.0.0/16`.
</details>

---

**Q3.** An administrator connects to a switch over Telnet. What is the security concern?

- **A.** Telnet is slow on modern networks
- **B.** Credentials are transmitted in cleartext
- **C.** Telnet uses UDP and is unreliable
- **D.** Telnet requires a dedicated management VLAN

<details><summary><b>Answer</b></summary>

**B — credentials are transmitted in cleartext.** Anyone capturing traffic between the
administrator and the device reads the username and password directly. Replace with **SSH on port
22**.

- **A** is a performance point, not a security one.
- **C** is factually wrong — Telnet uses TCP.
- **D** invents a requirement, and a management VLAN would not fix cleartext credentials.
</details>

---

**Q4.** Which device forwards traffic between two different networks using IP addresses?

- **A.** Switch
- **B.** Router
- **C.** Hub
- **D.** Bridge

<details><summary><b>Answer</b></summary>

**B — a router.** Layer 3, IP addresses, **between** networks.

- **A** operates at layer 2 using MAC addresses, **within** a network.
- **C** repeats signals at layer 1 with no forwarding decision at all.
- **D** connects two segments — an early, simpler switch, still layer 2.

*Switches work inside; routers work between.*
</details>

---

**Q5.** Malware spreads across 300 hosts in twenty minutes with no user interaction. What is it?

- **A.** Virus
- **B.** Trojan
- **C.** Worm
- **D.** Rootkit

<details><summary><b>Answer</b></summary>

**C — a worm.** Self-propagation with no user action is the defining property, and it explains the
speed.

- **A** requires a user to open or run an infected file — 300 hosts in twenty minutes would need
  300 people acting.
- **B** requires the user to be deceived into installing it.
- **D** describes what malware **does** (hides itself), not how it spreads.
</details>

---

**Q6.** An IDS and an IPS are deployed on the same segment. Which statement is correct?

- **A.** Both sit in line and can block traffic
- **B.** The IDS receives a copy and alerts; the IPS sits in line and can block
- **C.** The IDS blocks; the IPS alerts
- **D.** Both are passive detective controls

<details><summary><b>Answer</b></summary>

**B — the IDS receives a copy and alerts; the IPS sits in line and can block.** Position explains
capability: out of band cannot interfere, in line can drop.

- **A** describes two IPS devices.
- **C** reverses them.
- **D** is wrong for the IPS, which is active and **preventive**.

**I-D-S = Detect. I-P-S = Prevent.**
</details>

---

**Q7.** Which port pairing is INCORRECT?

- **A.** SMTP — 25
- **B.** IMAP — 143
- **C.** RDP — 3389
- **D.** LDAPS — 389

<details><summary><b>Answer</b></summary>

**D — LDAPS is 636**, not 389. Port **389** is plain **LDAP**.

- **A**, **B** and **C** are all correct.

Note the inverted stem — three are true and you are hunting the false one.
</details>

---

**Q8.** An attacker captures an encrypted authentication token and re-sends it an hour later to
gain access. What defends against this?

- **A.** Stronger encryption algorithms
- **B.** Timestamps, sequence numbers or nonces
- **C.** Longer key lengths
- **D.** A web application firewall

<details><summary><b>Answer</b></summary>

**B — timestamps, sequence numbers or nonces.** This is a **replay attack**, and the defence is
making each transaction unique so a repeat is detectable.

- **A** and **C** miss the point entirely: the attacker never decrypts anything. They re-send the
  ciphertext as-is. **Encryption does not stop replay.**
- **D** filters HTTP application attacks, which is not what is described.
</details>

---

**Q9.** Which detection method can identify a zero-day attack?

- **A.** Signature-based
- **B.** Anomaly-based
- **C.** Neither — zero-days are undetectable
- **D.** Both equally

<details><summary><b>Answer</b></summary>

**B — anomaly-based.** It compares activity against a learned baseline, so unusual behaviour is
flagged without prior knowledge of the specific attack. The cost is more false positives.

- **A** matches **known** patterns, so by definition it cannot match an attack nobody has seen.
- **C** is too absolute — anomaly detection exists precisely for this.
- **D** ignores the fundamental difference between the two approaches.
</details>

---

**Q10.** What is the PRIMARY purpose of NAT?

- **A.** Encrypting traffic leaving the network
- **B.** Conserving public IPv4 addresses
- **C.** Filtering inbound traffic by policy
- **D.** Resolving hostnames to addresses

<details><summary><b>Answer</b></summary>

**B — conserving public IPv4 addresses.** NAT was created to let many internal hosts share a small
number of public addresses.

- **A** is wrong — NAT rewrites address fields and encrypts nothing.
- **C** describes a firewall. NAT gives incidental obscurity, which makes this tempting, but
  **NAT is not a security control.**
- **D** describes DNS.
</details>

---

**Q11.** Which correctly describes split tunnelling versus full tunnelling?

- **A.** Split is more secure because less traffic crosses the VPN
- **B.** Full is more secure because all traffic passes corporate controls
- **C.** They are equally secure; only performance differs
- **D.** Split encrypts more strongly than full

<details><summary><b>Answer</b></summary>

**B — full is more secure because all traffic passes corporate controls.** Every request is
filtered, inspected and logged.

- **A** inverts the reasoning. Under split tunnelling, the non-corporate traffic bypasses
  inspection entirely and is not protected by the tunnel.
- **C** denies a real security difference; the trade-off is against performance.
- **D** invents an encryption-strength difference that does not exist.
</details>

---

**Q12.** A DMZ web server is compromised. What should the architecture prevent next?

- **A.** The internet reaching the DMZ
- **B.** The DMZ server freely initiating connections into the internal network
- **C.** Internal users browsing the internet
- **D.** Administrators managing DMZ servers

<details><summary><b>Answer</b></summary>

**B — the DMZ server freely initiating connections into the internal network.** That asymmetry is
the entire point of a DMZ: the exposed server will eventually be compromised, and it must not
become a route inward.

- **A** is the DMZ's purpose; blocking it makes the public server pointless.
- **C** is normal outbound business traffic.
- **D** is legitimate through controlled, monitored paths. The word doing the work in B is
  **freely**.
</details>

---

**Q13.** Under an IaaS model, who is responsible for patching the guest operating system?

- **A.** The cloud provider
- **B.** The customer
- **C.** Shared equally
- **D.** The hypervisor handles it automatically

<details><summary><b>Answer</b></summary>

**B — the customer.** The provider's responsibility stops at the virtualisation layer; everything
from the guest OS upwards is yours.

- **A** is the common misconception — owning the hardware does not extend the provider's duties
  into your virtual machine.
- **C** invents a split the model does not have.
- **D** is not a hypervisor function.

**In IaaS, you patch the OS.**
</details>

---

**Q14.** Which provides stronger workload isolation?

- **A.** Containers, because they are lighter
- **B.** Virtual machines, because each runs its own kernel
- **C.** Identical isolation
- **D.** Containers, because they share the host kernel

<details><summary><b>Answer</b></summary>

**B — virtual machines, because each runs its own kernel.** Escaping requires defeating the
hypervisor.

- **A** states a real advantage that is not an isolation property.
- **C** denies the central security distinction between the two.
- **D** describes containers correctly and draws the wrong conclusion — sharing the kernel is
  exactly what makes their isolation **weaker**.
</details>

---

**Q15.** Which attack is passive and therefore hardest to detect?

- **A.** ARP poisoning
- **B.** Network eavesdropping
- **C.** SYN flood
- **D.** DNS cache poisoning

<details><summary><b>Answer</b></summary>

**B — network eavesdropping.** The attacker only captures traffic, sending nothing and modifying
nothing, so there is no anomaly to observe.

- **A** requires sending falsified ARP replies — active and detectable.
- **C** is highly active and immediately visible; the service stops.
- **D** requires injecting false records — active.
</details>

---

**Q16.** An organisation wants to secure a wireless network. Which measure actually provides
security?

- **A.** Disabling SSID broadcast
- **B.** MAC address filtering
- **C.** WPA3 with a strong passphrase
- **D.** Reducing transmitter power

<details><summary><b>Answer</b></summary>

**C — WPA3 with a strong passphrase.** Strong encryption is the actual control.

- **A** is defeated in seconds — connecting clients broadcast the SSID regardless.
- **B** is defeated by spoofing, since MAC addresses travel in cleartext.
- **D** is a reasonable supporting measure, easily beaten by a directional antenna.

All three wrong options are things organisations genuinely do, which is what makes them good
distractors. **They are obscurity, not security.**
</details>

---

**Q17.** Which describes a stateful firewall?

- **A.** It inspects application-layer content
- **B.** It tracks connections and evaluates packets in that context
- **C.** It operates at layer 2 using MAC addresses
- **D.** It cannot filter on port numbers

<details><summary><b>Answer</b></summary>

**B — it tracks connections and evaluates packets in context.** That is how it recognises an
inbound packet as a legitimate reply to an outbound request.

- **A** describes an application-level or next-generation firewall.
- **C** is wrong — firewalls work at layers 3 and 4 in the basic model.
- **D** is wrong and inverted; they filter on ports **and** track state.
</details>

---

**Q18.** An attacker tries the password `Welcome2026` against 4,000 user accounts. What is this,
and why?

- **A.** Brute force, to try many combinations
- **B.** Dictionary attack, using a common word
- **C.** Password spraying, to avoid account lockout
- **D.** Credential stuffing, reusing breached passwords

<details><summary><b>Answer</b></summary>

**C — password spraying, to avoid account lockout.** One password across many accounts keeps the
failed-attempt count low on each individual account. That evasion is the entire reason the
technique exists.

- **A** would be many passwords against one account.
- **B** would work through a list against a target — this is the inversion of that, and the
  inversion has its own name.
- **D** would use username/password **pairs** obtained from another breach.
</details>

---

**Q19.** What does a digital certificate provide?

- **A.** Encryption of data at rest
- **B.** A binding between a public key and a verified identity
- **C.** A symmetric key for bulk encryption
- **D.** Guaranteed availability of a service

<details><summary><b>Answer</b></summary>

**B — a binding between a public key and a verified identity.** It closes the gap that public key
cryptography otherwise has: knowing whose key you actually hold.

- **A** is a separate control unrelated to certificates.
- **C** is what the TLS handshake negotiates **using** the certificate — a consequence, not what the
  certificate is.
- **D** has nothing to do with certificates.
</details>

---

**Q20.** Why is a traditional VPN inconsistent with zero trust principles?

- **A.** VPN encryption is too weak for modern threats
- **B.** It grants network-level access, creating the implicit trust zero trust removes
- **C.** VPNs cannot support multi-factor authentication
- **D.** VPNs only work for site-to-site connections

<details><summary><b>Answer</b></summary>

**B — it grants network-level access, creating implicit trust.** Once connected, the device is on
the network and can reach whatever routing and firewall rules permit. Zero trust brokers access to
**individual applications** instead.

- **A** is wrong; modern VPN encryption is strong. The issue is what happens after the tunnel is up.
- **C** is wrong — VPNs commonly use MFA, and should.
- **D** is wrong; remote access VPNs are extremely common.
</details>

---

## 📊 Score yourself

| Score | Reading |
|---|---|
| **18–20** | Domain 4 is solid |
| **15–17** | Good. Re-read the topics behind your misses |
| **12–14** | Check whether your misses were **operationally right but textbook wrong** |
| **Below 12** | Re-read the domain, especially `osi-and-tcpip/` and `ports-and-protocols/` |

> 🎯 **If your wrong answers were what you would actually do at work**, the problem is not
> knowledge. Re-read [`00-foundations/how-isc2-thinks/`](../00-foundations/how-isc2-thinks/).

---

<div align="center">
<sub><a href="README.md">← back to 07 · Question Bank</a> &nbsp;·&nbsp; <a href="drill-domain-03.md">Domain 3 drill →</a></sub>
</div>
