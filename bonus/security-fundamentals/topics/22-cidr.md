# ✂️ CIDR

**Section:** IP Networking &nbsp;·&nbsp; **Topic:** 22 of 290 &nbsp;·&nbsp; **Level:** 🟢 Beginner

## 📖 First, a Quick Story

In the previous topic, a subnet mask was written out in full: `255.255.255.0`. That works fine, but it's a bit long to write every time, and it doesn't immediately show how many addresses are actually available on that network.

**CIDR** is simply a shorter, more precise way of writing the same information — like writing "a quarter" instead of "twenty-five hundredths."

## 🧠 What Is It?

**CIDR** (Classless Inter-Domain Routing) is a compact notation for writing an IP address together with its subnet mask, using a slash followed by a number — for example:

```
192.168.1.10/24
```

The number after the slash (here, `24`) tells you exactly how many bits, out of the total 32 bits in an IPv4 address, are used for the network portion. This single number replaces having to write out the full subnet mask separately.

## 🎯 Why Does It Exist?

Before CIDR, IP addresses were grouped into a small number of fixed-size categories called "classes" (Class A, B, C), each with a fixed, rigid amount of network and host space. This was simple, but wasteful — many organizations were forced into address blocks far larger than they actually needed, wasting large numbers of unused addresses.

CIDR was introduced to allow far more flexible, precisely-sized network divisions, and to provide a shorter, standard way to express exactly how an IP address range is split between network and host portions — without needing fixed-size categories.

## ⚙️ How Does It Work?

The number after the slash in CIDR notation refers to how many of the 32 total bits in an IPv4 address are fixed as the network portion. The remaining bits are available for individual devices (hosts).

<p align="center"><img src="diagrams/1.svg" alt="diagram"></p>

Since each IPv4 octet is 8 bits, and there are 4 octets (32 bits total):

| CIDR Notation | Equivalent Subnet Mask | Network Bits | Host Bits | Approx. Usable Addresses |
|---|---|---|---|---|
| /8 | 255.0.0.0 | 8 | 24 | ~16.7 million |
| /16 | 255.255.0.0 | 16 | 16 | ~65,000 |
| /24 | 255.255.255.0 | 24 | 8 | 254 |
| /30 | 255.255.255.252 | 30 | 2 | 2 |

A larger number after the slash means more bits are used for the network, leaving fewer bits (and therefore fewer possible addresses) for hosts — meaning a *smaller* network. A smaller number after the slash means a *larger* network, with more room for individual devices.

<p align="center"><img src="diagrams/2.svg" alt="diagram"></p>

## 🧩 Important Parts

| Term | Meaning |
|---|---|
| ✂️ CIDR | A notation combining an IP address and its network size using a slash and a number |
| 🔢 Prefix length | The number after the slash (e.g., the "24" in /24), showing how many bits form the network portion |
| 📏 Classless | Refers to CIDR removing the old rigid class-based (A/B/C) address groupings |
| 🧮 Usable addresses | The number of addresses available for actual devices within a given CIDR block |

🔍 CIDR notation and a written-out subnet mask (like `255.255.255.0`) represent exactly the same information — just in two different formats. You will see both used interchangeably in real systems.

## 💡 Simple Example

A small office needs a network for about 50 computers. Instead of being forced into an old rigid class (which might have provided far more or far fewer addresses than needed), CIDR allows choosing an appropriately sized block:

```
192.168.1.0/26
```

A `/26` provides 64 total addresses (62 usable for devices, after accounting for two reserved addresses covered in later topics) — a much closer fit for 50 computers than the 254 addresses a `/24` would provide, or the far larger blocks that old class-based addressing would have required.

<p align="center"><img src="diagrams/3.svg" alt="diagram"></p>

## 🔍 How It Looks in Real Life

- Cloud platforms (like AWS or Azure) ask you to define network ranges using CIDR notation when setting up a virtual network.
- Network administrators use CIDR to carefully divide company address space into right-sized segments for different departments or purposes.
- Firewall rules often reference CIDR blocks to allow or block entire ranges of addresses at once (for example, allowing `203.0.113.0/24` rather than listing every individual address).

## ⚠️ Common Confusion

- ❌ **"A bigger number after the slash means a bigger network."**
  It's the opposite. A bigger number (like /28) means more bits are reserved for the network, leaving fewer bits for hosts — a *smaller* network. A smaller number (like /16) means a *larger* network.

- ❌ **"CIDR is a completely different concept from a subnet mask."**
  CIDR notation and a subnet mask represent the exact same information, just written differently. `/24` and `255.255.255.0` mean the same thing.

- ❌ **"Every device on a /24 network can actually be used."**
  In most cases, a couple of addresses within any given range are reserved for special purposes (such as identifying the network itself), so the number of *usable* addresses is usually slightly less than the full mathematical total. This is covered further in the Network Address and Broadcast Address topics.

## 🛠️ Practical Example

Checking a device's address in CIDR notation on Linux/macOS:

```
ip addr
```
```
inet 192.168.1.10/24
```

What this means:
- `192.168.1.10` is the device's IP address.
- `/24` indicates that the first 24 bits (three full octets: `192.168.1`) form the network portion, matching a subnet mask of `255.255.255.0`.

## 🧪 Quick Check

**1. What does CIDR notation combine into one compact format?**
<details><summary>Answer</summary>An IP address together with its subnet mask information, expressed as a slash followed by a number (the prefix length).</details>

**2. Does a larger number after the slash (like /28) mean a larger or smaller network?**
<details><summary>Answer</summary>A smaller network — a larger number after the slash means more bits are used for the network portion, leaving fewer bits (and fewer addresses) available for hosts.</details>

**3. True or False: /24 and 255.255.255.0 represent different information.**
<details><summary>Answer</summary>False. They represent exactly the same information, written in two different formats.</details>

**4. Why was CIDR introduced instead of continuing to use old class-based (A/B/C) addressing?**
<details><summary>Answer</summary>Because class-based addressing forced organizations into fixed, often poorly-fitting network sizes, wasting large numbers of unused addresses. CIDR allows flexible, precisely-sized networks instead.</details>

**5. Roughly how many usable addresses does a /24 network provide?**
<details><summary>Answer</summary>254 usable addresses.</details>

## 🧠 Remember This

<p align="center"><img src="diagrams/4.svg" alt="diagram"></p>

- CIDR is a shorthand way to write an IP address together with its network size, like `192.168.1.10/24`.
- The number after the slash shows how many bits form the network portion.
- A bigger number after the slash means a smaller network; a smaller number means a bigger network.
- CIDR replaced older, rigid class-based addressing with flexible, precisely-sized network blocks.
