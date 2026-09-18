# 🎭 Subnet Mask

**Section:** IP Networking &nbsp;·&nbsp; **Topic:** 21 of 290 &nbsp;·&nbsp; **Level:** 🟢 Beginner

## 📖 First, a Quick Story

Think of a long street address like "Building 12, Flat 5." The address actually has two parts: which building you're in, and which specific flat inside that building. Someone reading the address needs a way to know where the "building" part ends and the "flat" part begins.

A **subnet mask** does exactly that for an [IP address](01-ip-address.md). It tells a device which part of the address identifies the network (the "building") and which part identifies the specific device on that network (the "flat").

## 🧠 What Is It?

A **subnet mask** is a number, written in the same format as an IP address, that indicates which portion of an IP address represents the network and which portion represents the individual device (called the "host") on that network.

A common example looks like this:

```
IP Address:   192.168.1.10
Subnet Mask:  255.255.255.0
```

## 🎯 Why Does It Exist?

An IP address by itself is just a number — `192.168.1.10` doesn't tell a device anything about which other addresses are considered "nearby" on the same local network versus which addresses belong to a completely different network that would require a router to reach.

The subnet mask solves this by clearly splitting an IP address into two parts: the **network portion** and the **host portion**. Devices use this split to instantly determine whether another IP address is on their own local network (and can be reached directly) or on a different network (and needs to go through a router, covered in a later topic).

## ⚙️ How Does It Work?

A subnet mask uses the same four-number (octet) format as an IPv4 address, but its purpose is different — it acts as a pattern, marking which bits belong to the network and which belong to the host.

<p align="center"><img src="diagrams/1.svg" alt="diagram"></p>

In a subnet mask, a value of `255` in an octet means "this whole part of the address is the network portion." A value of `0` means "this part is available for identifying individual devices (hosts)."

So with a subnet mask of `255.255.255.0`:
- The first three octets (`192.168.1`) identify the network.
- The last octet (`10` in this example) identifies the specific device on that network.

This means any device with an address starting with `192.168.1.` (like `192.168.1.20` or `192.168.1.30`) is considered to be on the *same* local network, and can communicate directly without needing a router in between.

What happens without a shared understanding of the network portion:

<p align="center"><img src="diagrams/2.svg" alt="diagram"></p>

## 🧩 Important Parts

| Term | Meaning |
|---|---|
| 🎭 Subnet mask | A number that marks which part of an IP address is the network vs. the host |
| 🌐 Network portion | The part of an IP address shared by every device on the same local network |
| 💻 Host portion | The part of an IP address that is unique to one specific device |
| 🔢 255 | In a subnet mask, marks an octet as fully part of the network portion |

🔍 A subnet mask is always paired with an IP address — it never appears meaningfully on its own. Without a subnet mask, a device would have no way to know where the "network" part of its own address ends.

## 💡 Simple Example

Two devices on a home network:

- Device A: IP `192.168.1.10`, Subnet Mask `255.255.255.0`
- Device B: IP `192.168.1.20`, Subnet Mask `255.255.255.0`

Both devices apply the subnet mask `255.255.255.0` to their own address and to each other's address, and find that the network portion (`192.168.1`) matches for both. This tells each device: "this other device is on my same local network — I can talk to it directly."

<p align="center"><img src="diagrams/3.svg" alt="diagram"></p>

If Device B instead had the IP `192.168.2.20` (a different network portion), Device A would recognize that Device B is on a *different* network, and any communication would need to go through a router rather than happening directly.

## 🔍 How It Looks in Real Life

- Home routers automatically assign devices an IP address along with a subnet mask, most commonly `255.255.255.0`.
- Network administrators use subnet masks to divide a company's network into smaller, organized sections (this practice, called subnetting, is covered in the next topic).
- Checking a device's network settings (as shown in the [IP Address](01-ip-address.md) topic) typically displays the subnet mask right alongside the IP address.

## ⚠️ Common Confusion

- ❌ **"A subnet mask is a type of IP address."**
  A subnet mask uses the same format as an IP address, but it serves a completely different purpose — it defines how to interpret an IP address, rather than identifying a specific device itself.

- ❌ **"255.255.255.0 is the only subnet mask that exists."**
  While `255.255.255.0` is extremely common on home networks, other subnet masks exist and allow for different-sized networks. This flexibility is explored further in the CIDR and Subnetting topics that follow.

- ❌ **"The subnet mask alone tells you a device's identity."**
  The subnet mask only defines the split between network and host portions — it must always be used together with an actual IP address to have any meaning.

## 🛠️ Practical Example

Checking a device's IP address and subnet mask together:

**Windows:**
```
ipconfig
```
```
IPv4 Address. . . . . . . . . . . : 192.168.1.10
Subnet Mask . . . . . . . . . . . : 255.255.255.0
```

**Linux/macOS:**
```
ip addr
```
```
inet 192.168.1.10/24
```

🔍 On Linux/macOS, you'll often see the subnet mask written differently, as `/24` instead of `255.255.255.0`. This shorthand notation is called **CIDR**, and is explained fully in the next topic — for now, just recognize that `/24` and `255.255.255.0` represent the same idea.

## 🧪 Quick Check

**1. What does a subnet mask do?**
<details><summary>Answer</summary>It marks which part of an IP address represents the network and which part represents the specific device (host) on that network.</details>

**2. If two devices have the same network portion in their IP addresses, what does that mean for how they communicate?**
<details><summary>Answer</summary>They are considered to be on the same local network and can communicate with each other directly, without needing a router.</details>

**3. True or False: A subnet mask can be meaningful on its own, without being paired with an IP address.**
<details><summary>Answer</summary>False. A subnet mask only has meaning when applied together with a specific IP address.</details>

**4. In the subnet mask 255.255.255.0, which octets represent the network portion?**
<details><summary>Answer</summary>The first three octets (each marked 255) represent the network portion; the last octet (marked 0) is available for the host portion.</details>

**5. What happens if a device tries to communicate with another device that has a different network portion in its address?**
<details><summary>Answer</summary>The communication needs to go through a router, rather than being delivered directly on the local network.</details>

## 🧠 Remember This

<p align="center"><img src="diagrams/4.svg" alt="diagram"></p>

- A subnet mask splits an IP address into a network portion and a host portion.
- Devices with matching network portions are on the same local network and can talk directly.
- `255` in a subnet mask octet means "network," `0` means "available for host."
- A subnet mask only has meaning when paired with an actual IP address.
