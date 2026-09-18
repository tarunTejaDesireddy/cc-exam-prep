# 🔧 MAC Address

**Section:** Networking Foundations &nbsp;·&nbsp; **Topic:** 4 of 130 &nbsp;·&nbsp; **Level:** 🟢 Beginner

## 📖 First, a Quick Story

Every car ever manufactured has a Vehicle Identification Number (VIN) stamped permanently into its frame at the factory. That VIN never changes for the life of that car, no matter who owns it, what city it's driven in, or what license plate it's currently wearing. The license plate can change over time — but the VIN, stamped into the metal itself, stays the same forever.

A **MAC address** is the VIN of a network device. It's stamped into the network hardware (the Wi-Fi or Ethernet card) by the manufacturer, and it identifies that specific piece of hardware — separate from the IP address, which is more like the license plate: it can change depending on which network the device joins.

## 🧠 What Is It?

A **MAC address** (Media Access Control address) is a unique identifier physically assigned to a device's network hardware — such as its Wi-Fi card or Ethernet card.

While an IP address (covered in [IP Address](01-ip-address.md)) identifies where a device is on a network and can change over time, a MAC address identifies the specific piece of hardware itself and normally stays the same for the life of that hardware.

A MAC address looks like this:

```
00:1A:2B:3C:4D:5E
```

It is written as six pairs of hexadecimal digits (0–9 and A–F), separated by colons or dashes.

## 🎯 Why Does It Exist?

On a local network, devices need a way to identify each other at the hardware level, before any higher-level addressing (like IP addresses) even comes into play.

Every network card manufactured is given a MAC address by its manufacturer, burned into the hardware itself. This guarantees that, in theory, no two network cards in the world share the same MAC address.

MAC addresses exist to solve a specific problem: **on a local network segment, how does one device's network hardware deliver data directly to another device's network hardware?** IP addresses handle finding a path across larger networks, but the final, local, hardware-to-hardware delivery relies on MAC addresses.

## ⚙️ How Does It Work?

When a device sends data to another device on the same local network, the local network hardware (like a switch, covered in a later topic) uses MAC addresses to deliver that data to the correct physical device.

<p align="center"><img src="diagrams/04-mac-address-1.svg" alt="diagram" width="500"></p>

Step by step, on a local network:

1. Device A wants to send data to Device B, and already knows Device B's IP address.
2. Before sending, Device A needs Device B's MAC address to deliver the data at the hardware level. (This lookup process is called ARP, covered in a later topic.)
3. Device A sends the data, labeled with Device B's MAC address, onto the local network.
4. The switch reads that MAC address and delivers the data only to the port (physical connection) where Device B is connected.
5. Device B receives the data because its network card recognizes its own MAC address.

🔍 IP addresses and MAC addresses work together: the IP address gets data to the right network, and the MAC address gets it to the right device on that specific local network.

## 🧩 Important Parts

| Term | Meaning |
|---|---|
| 🔧 MAC address | A unique hardware identifier assigned to a network card |
| 📡 Network card | The hardware component (Wi-Fi or Ethernet) that connects a device to a network |
| 🏭 Manufacturer | The company that builds the network card and assigns it a MAC address |
| 🔵 Local network segment | A network where devices can communicate directly at the hardware level (without a router in between) |

## 💡 Simple Example

Imagine two computers connected to the same office switch:

- Computer A: MAC address `00:1A:2B:3C:4D:5E`
- Computer B: MAC address `00:1A:2B:3C:4D:5F`

When Computer A sends a file to Computer B on this local network:

1. Computer A already knows Computer B's IP address.
2. Computer A finds out Computer B's MAC address using the local network.
3. Computer A sends the data with Computer B's MAC address attached.
4. The switch delivers the data specifically to the physical port where Computer B is plugged in — not to every device on the network.

This is different from a simple broadcast, where data would go to every device. The MAC address allows precise, direct delivery.

## 🔍 How It Looks in Real Life

- Wi-Fi routers often let you view a list of connected devices along with their MAC addresses.
- Some networks use **MAC filtering**, allowing only specific, pre-approved MAC addresses to connect to Wi-Fi.
- IT departments sometimes track devices on a corporate network by their MAC addresses, since MAC addresses generally stay constant even if a device's IP address changes.

## ⚠️ Common Confusion

- ❌ **"A MAC address can be used to route data across the internet."**
  MAC addresses only work on the local network segment. Once data needs to cross into a different network (through a router), IP addresses take over for the larger journey. MAC addresses are not used for that long-distance delivery.

- ❌ **"A MAC address can never be changed."**
  The MAC address burned into hardware by the manufacturer is meant to be permanent, but many operating systems allow a device to present a different, temporary MAC address (this is sometimes called MAC address randomization or spoofing). So while the hardware default doesn't change, what a device reports on the network can.

- ❌ **"IP address and MAC address are the same type of identifier."**
  They are not interchangeable. IP address identifies a device's location on a network (and can change). MAC address identifies the physical network hardware itself (and normally stays constant).

## 🛠️ Practical Example

Viewing a device's MAC address: <kbd>ipconfig /all</kbd> on Windows, or <kbd>ip link</kbd> on Linux/macOS.

**Windows:**
```
ipconfig /all
```
```
Physical Address. . . . . . . . : 00-1A-2B-3C-4D-5E
```

**Linux/macOS:**
```
ip link
```
```
link/ether 00:1a:2b:3c:4d:5e
```

What this means:
- `Physical Address` / `link/ether` — this is the MAC address of that specific network interface.
- Note that it appears as six pairs of hexadecimal digits, whether separated by dashes or colons.

## 🧪 Quick Check

**1. What does a MAC address identify?**
<details><summary>Answer</summary>The specific physical network hardware (like a Wi-Fi or Ethernet card) of a device.</details>

**2. How is a MAC address different from an IP address in terms of permanence?**
<details><summary>Answer</summary>A MAC address is normally fixed to the hardware by the manufacturer and stays constant, while an IP address can change over time.</details>

**3. True or False: MAC addresses are used to deliver data across the entire internet.**
<details><summary>Answer</summary>False. MAC addresses are only used for delivery within a local network segment. IP addresses handle delivery across larger networks.</details>

**4. What format is a MAC address written in?**
<details><summary>Answer</summary>Six pairs of hexadecimal digits, separated by colons or dashes, for example 00:1A:2B:3C:4D:5E.</details>

**5. Why does a switch need a MAC address instead of just an IP address to deliver data locally?**
<details><summary>Answer</summary>Because the switch operates at the hardware level of the local network, and MAC addresses are what identify individual physical devices at that level. IP addresses are used at a higher level for finding paths across networks, not for direct hardware delivery.</details>

## 🧠 Remember This

- A MAC address is a unique identifier assigned to a device's network hardware.
- It identifies the physical device, while an IP address identifies its location on a network.
- MAC addresses are used for delivery within a local network segment, not across the internet.
- MAC addresses are normally permanent (assigned by the manufacturer), though software can sometimes present a different one.
