# 🏷️ Network Address

**Section:** IP Networking &nbsp;·&nbsp; **Topic:** 24 of 290 &nbsp;·&nbsp; **Level:** 🟢 Beginner

## 📖 First, a Quick Story

Think of a street with houses numbered 1 through 30. The name of the street itself — say, "Oak Street" — is not any single house's address; it refers to the whole street as a group. You would never actually deliver mail addressed simply to "Oak Street," because no one lives there specifically — it identifies the group, not an individual resident.

A **network address** works the same way. It identifies an entire subnet as a group — it is never assigned to an actual device.

## 🧠 What Is It?

The **network address** is a special, reserved IP address within a given subnet that represents the subnet itself, rather than any individual device on it.

By convention, the network address is always the *very first* address in a subnet's range — the one where every bit in the host portion is set to 0.

## 🎯 Why Does It Exist?

Networking equipment (routers, switches) frequently needs to refer to an entire subnet as a single unit — for example, when writing a routing rule ("send traffic for this whole subnet this way") or a firewall rule ("block all traffic from this entire subnet"). Without a standard way to name "the subnet as a whole," every rule would need to somehow reference every individual address in that subnet one at a time, which would be impractical.

The network address solves this by giving every subnet one predictable, reserved identifier that represents the group, separate from any actual device's address.

## ⚙️ How Does It Work?

For a subnet like `192.168.1.0/24`, the address `192.168.1.0` itself is the network address — notice that the host portion (the last octet, based on what was covered in the [Subnet Mask](21-subnet-mask.md) topic) is entirely zeros.

<p align="center"><img src="diagrams/1.svg" alt="diagram"></p>

Because the network address (all host bits set to zero) and the broadcast address (all host bits set to one, covered next) are both reserved for special purposes, they are **not** available to be assigned to an actual device. This is why a `/24` subnet, despite mathematically containing 256 total addresses, only provides 254 *usable* addresses for real devices.

What happens if someone mistakenly tries to assign the network address to a device:

<p align="center"><img src="diagrams/2.svg" alt="diagram"></p>

## 🧩 Important Parts

| Term | Meaning |
|---|---|
| 🏷️ Network address | The reserved address representing an entire subnet, never assigned to a device |
| 0️⃣ Host bits set to zero | The pattern that identifies the network address within a subnet |
| 📋 Routing table entries | Often reference network addresses to describe entire destination subnets (covered in a later topic) |

## 💡 Simple Example

For the subnet `192.168.1.0/24`:

```
Network Address:    192.168.1.0    (represents the subnet — not assignable)
First usable:        192.168.1.1
...
Last usable:          192.168.1.254
Broadcast Address:  192.168.1.255  (covered next — also not assignable)
```

<p align="center"><img src="diagrams/3.svg" alt="diagram"></p>

If a network administrator wanted to write a firewall rule blocking all traffic originating from this entire subnet, they would write it using the network address in CIDR form: `192.168.1.0/24` — referring to the whole group at once, rather than listing all 254 individual addresses.

## 🔍 How It Looks in Real Life

- Routing tables commonly list destinations using network addresses (e.g., "send traffic for `192.168.1.0/24` out this interface").
- Firewall rules frequently reference entire subnets by their network address, to apply one rule to a whole group of devices at once.
- Network diagrams and documentation typically label each subnet by its network address (e.g., "the 192.168.1.0/24 subnet"), even though no device actually holds that specific address.

## ⚠️ Common Confusion

- ❌ **"The network address can be assigned to a device, like a router."**
  The network address is reserved specifically to represent the subnet as a whole. It is never assigned to any individual device, including routers — a router still uses one of the actual usable addresses within the subnet.

- ❌ **"Every subnet's network address ends in .0."**
  This is common with typical `/24` subnets, but it is not a universal rule. The exact value of the network address depends on the specific subnet size (CIDR prefix) and range being used.

- ❌ **"The network address is just an unused address, with no real purpose."**
  It has a specific, important purpose: representing the entire subnet as a single identifiable unit, which is essential for routing and firewall configuration.

## 🛠️ Practical Example

A simplified routing table entry referencing a network address:

```
Destination: 192.168.1.0/24
Next Hop: 192.168.1.1
Interface: eth0
```

What this means:
- `192.168.1.0/24` is the network address (with its CIDR prefix), representing the entire destination subnet.
- This single line tells the router how to reach every device within that subnet, without needing a separate entry for each individual address.

## 🧪 Quick Check

**1. What is a network address?**
<details><summary>Answer</summary>A reserved IP address that represents an entire subnet as a group, rather than any individual device — identified by having all host bits set to zero.</details>

**2. Can the network address ever be assigned to an actual device, like a computer or router?**
<details><summary>Answer</summary>No. It is reserved specifically to represent the subnet itself and is never assigned to a device.</details>

**3. In the subnet 192.168.1.0/24, what is the network address?**
<details><summary>Answer</summary>192.168.1.0</details>

**4. Why is a network address useful for routing and firewall rules?**
<details><summary>Answer</summary>Because it lets a single rule or table entry refer to an entire subnet at once, rather than needing to list every individual address in that subnet separately.</details>

**5. True or False: A /24 subnet provides 256 usable addresses for devices.**
<details><summary>Answer</summary>False. A /24 subnet mathematically contains 256 total addresses, but 254 are usable — the network address and the broadcast address are both reserved and not assignable to devices.</details>

## 🧠 Remember This

<p align="center"><img src="diagrams/4.svg" alt="diagram"></p>

- The network address represents an entire subnet, not any individual device.
- It is identified by having all host bits set to zero (e.g., 192.168.1.0 for a /24 subnet).
- It is reserved and can never be assigned to an actual device.
- Routing and firewall rules commonly use the network address to refer to a whole subnet at once.
