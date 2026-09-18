# 📇 ARP

**Section:** Core Network Protocols &nbsp;·&nbsp; **Topic:** 32 of 290 &nbsp;·&nbsp; **Level:** 🟢 Beginner

## 📖 First, a Quick Story

Imagine you're at a large event and you know a guest's name, but you need to find out exactly which seat they're sitting in to deliver a message to them. You could shout the name out loud across the room: "Does anyone know where John is sitting?" — and John himself (or someone who knows) would call back with his exact seat number.

**ARP** does exactly this for a local network. A device knows another device's IP address, but needs to find out its MAC address (its exact physical "seat") in order to actually deliver data to it.

## 🧠 What Is It?

**ARP (Address Resolution Protocol)** is a protocol used to discover the [MAC address](04-mac-address.md) associated with a known [IP address](01-ip-address.md), on a local network.

This connects two ideas covered earlier: IP addresses are used for identifying devices logically across a network, while MAC addresses are used for actual delivery at the hardware level, within a single local network segment. ARP is the bridge between the two.

## 🎯 Why Does It Exist?

As covered in the [MAC Address](04-mac-address.md) topic, delivering data to a device on the same local network actually requires knowing that device's MAC address, not just its IP address. But devices typically only know each other's IP addresses in advance (for example, from a message a program wants to send to a specific IP).

ARP exists to solve this gap. It provides a standard way for a device to ask, "who has this IP address, and what is your MAC address?" — allowing local delivery to actually happen at the hardware level.

## ⚙️ How Does It Work?

<p align="center"><img src="diagrams/1.svg" alt="diagram"></p>

Step by step:

1. Device A wants to send data to `192.168.1.20`, but only knows its IP address, not its MAC address.
2. Device A sends an ARP request, using the [broadcast address](25-broadcast-address.md), asking "who has 192.168.1.20?"
3. Every device on the local network receives this broadcast, but only the device that actually owns `192.168.1.20` responds.
4. That device (Device B) replies directly to Device A with its MAC address.
5. Device A now has what it needs to deliver data directly at the hardware level, and stores this information temporarily in a local **ARP cache**, so it doesn't need to repeat this process for every single message.

<p align="center"><img src="diagrams/2.svg" alt="diagram"></p>

## 🧩 Important Parts

| Term | Meaning |
|---|---|
| 📇 ARP | Address Resolution Protocol — resolves an IP address to a MAC address |
| 📢 ARP request | A broadcast message asking "who has this IP address?" |
| ✉️ ARP reply | The direct response from the device that owns that IP address, containing its MAC address |
| 🗄️ ARP cache | A temporary local table storing recently learned IP-to-MAC mappings, to avoid repeating requests unnecessarily |

## 💡 Simple Example

Device A (`192.168.1.10`) wants to send a file to Device B (`192.168.1.20`) for the first time:

1. Device A checks its ARP cache and finds no existing entry for `192.168.1.20`.
2. Device A broadcasts an ARP request: "Who has 192.168.1.20?"
3. Device B recognizes its own IP address in the request and replies directly: "192.168.1.20 is at MAC AA:BB:CC:11:22:33."
4. Device A stores this mapping in its ARP cache and uses it to address the file transfer at the hardware level.

<p align="center"><img src="diagrams/3.svg" alt="diagram"></p>

If Device A sends another file to Device B shortly afterward, it can simply reuse the MAC address already stored in its ARP cache, skipping the request-and-reply process entirely — at least until that cache entry eventually expires.

## 🔍 How It Looks in Real Life

- Every device on a local network relies on ARP constantly and automatically, without any user involvement.
- Network troubleshooting tools let administrators view a device's current ARP cache to check what MAC addresses it has recently learned.
- ARP is specifically limited to local networks — it is never used to resolve addresses across the wider internet, since MAC addresses (as covered earlier) are only meaningful on a local network segment.

## ⚠️ Common Confusion

- ❌ **"ARP is used to look up addresses anywhere on the internet."**
  ARP only operates within a local network segment. Looking up how to reach a destination *outside* the local network is a job for routing (as covered in earlier topics), not ARP.

- ❌ **"A device needs to run ARP every single time it sends any data."**
  Thanks to the ARP cache, a device only needs to perform the request-and-reply process when it doesn't already have a recent, valid mapping stored — not for every individual piece of data sent.

- ❌ **"ARP is inherently secure and cannot be abused."**
  Because ARP requests and replies are generally trusted without strong verification, ARP can be abused by an attacker through a technique called ARP spoofing, covered in a later topic in the Common Network Attacks section.

## 🛠️ Practical Example

Viewing a device's ARP cache:

**Windows:**
```
arp -a
```

**Linux/macOS:**
```
ip neigh
```

Example output (simplified):
```
Internet Address    Physical Address
192.168.1.1          00-1A-2B-3C-4D-5E
192.168.1.20         00-1A-2B-3C-4D-5F
```

What this means:
- Each line shows a recently learned mapping between an IP address and its corresponding MAC address on the local network.
- These entries were populated automatically through ARP requests and replies, without requiring any manual configuration.

## 🧪 Quick Check

**1. What does ARP do?**
<details><summary>Answer</summary>It discovers the MAC address associated with a known IP address on a local network.</details>

**2. Why is ARP necessary, given that devices already know each other's IP addresses?**
<details><summary>Answer</summary>Because actual delivery of data at the hardware level on a local network requires the destination's MAC address, not just its IP address — ARP bridges that gap.</details>

**3. True or False: ARP is used to resolve addresses across the wider internet, not just the local network.**
<details><summary>Answer</summary>False. ARP only operates within a local network segment; it is never used for resolving addresses outside of it.</details>

**4. What is an ARP cache, and why is it useful?**
<details><summary>Answer</summary>A temporary local table storing recently learned IP-to-MAC mappings, useful because it avoids the need to repeat an ARP request for every single message sent to the same device.</details>

**5. How does an ARP request reach the correct device, if the sender doesn't yet know exactly where that device is?**
<details><summary>Answer</summary>The ARP request is sent as a broadcast, reaching every device on the local network; only the device that actually owns the requested IP address responds.</details>

## 🧠 Remember This

<p align="center"><img src="diagrams/4.svg" alt="diagram"></p>

- ARP resolves a known IP address into its corresponding MAC address, on a local network.
- It works through a broadcast request and a direct reply from the owning device.
- Results are temporarily stored in an ARP cache, avoiding repeated lookups.
- ARP only works within a local network segment, never across the wider internet.
