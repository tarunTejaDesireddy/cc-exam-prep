# 📋 Routing Table

**Section:** IP Networking &nbsp;·&nbsp; **Topic:** 28 of 290 &nbsp;·&nbsp; **Level:** 🟢 Beginner

## 📖 First, a Quick Story

Imagine a train station employee whose job is to direct passengers to the correct platform. They don't need to know a passenger's entire life story — they just need a simple reference sheet: "Trains to City A leave from Platform 1. Trains to City B leave from Platform 4. Everything else, ask at the information desk." With that sheet in hand, they can quickly point anyone in the right direction.

A **routing table** is exactly that reference sheet, but for a router. It's a list the router checks to decide where to send data next.

## 🧠 What Is It?

A **routing table** is a list, stored on a router (or any networked device), of known destination networks and the corresponding next step required to reach each one.

This is the specific mechanism behind the [Routing](27-routing.md) topic — when a router "decides where to send data next," it is actually just looking up the destination in its own routing table.

## 🎯 Why Does It Exist?

A router needs a fast, reliable way to decide, for any given destination address, which direction to send the data. Without an organized reference, this decision would be slow, inconsistent, or impossible at the speed real networks require.

The routing table exists to give the router exactly that organized reference — a structured list it can quickly check for every single piece of data passing through it, to determine the correct next step.

## ⚙️ How Does It Work?

A routing table typically contains several entries, each describing one known destination network and how to reach it.

<p align="center"><img src="diagrams/1.svg" alt="diagram"></p>

Each entry in a routing table typically includes:

1. **Destination network** — the network address and CIDR prefix this entry applies to (as covered in earlier topics).
2. **Next hop** — the address of the next router that data should be forwarded to, in order to get closer to that destination.
3. **Interface** — which of the router's own network connections should be used to send the data out.

If no specific entry matches a destination, most routers fall back to a special catch-all entry called the **default route** — this is exactly the mechanism behind the [Default Gateway](26-default-gateway.md) concept covered earlier.

<p align="center"><img src="diagrams/2.svg" alt="diagram"></p>

## 🧩 Important Parts

| Term | Meaning |
|---|---|
| 📋 Routing table | The list of known destinations and how to reach them, stored on a router |
| ➡️ Next hop | The address of the next router along the path to a given destination |
| 🔌 Interface | The specific network connection a router uses to send data toward a destination |
| 🚪 Default route | The catch-all entry used when no more specific match exists |

## 💡 Simple Example

A simplified routing table on a company's router might look like this:

```
Destination         Next Hop        Interface
192.168.1.0/24       (directly connected)   eth0
192.168.2.0/24       10.0.0.2                eth1
0.0.0.0/0 (default)  10.0.0.1                eth1
```

<p align="center"><img src="diagrams/3.svg" alt="diagram"></p>

If data arrives destined for `192.168.1.50`, the router matches it against the first entry and delivers it directly, since that subnet is directly connected. If data arrives destined for a completely unrelated address like `203.0.113.45`, none of the specific entries match, so the router falls back to the default route (`0.0.0.0/0`), sending it toward `10.0.0.1`.

## 🔍 How It Looks in Real Life

- Every router, from a simple home router to massive internet backbone routers, maintains and constantly uses a routing table.
- Network engineers troubleshooting connectivity issues often check a device's routing table to understand exactly how it's currently deciding to send traffic.
- Home computers and servers also maintain a simple routing table of their own, even though it's usually just a handful of entries, including their default route (their default gateway).

## ⚠️ Common Confusion

- ❌ **"A routing table lists every possible destination on the entire internet."**
  Routing tables usually contain a manageable number of entries, relying heavily on the default route to handle anything not specifically listed, rather than trying to list every possible destination individually.

- ❌ **"Only large, dedicated router hardware has a routing table."**
  Every networked device, including ordinary laptops and phones, maintains at least a very small routing table, even if it's often invisible to the average user.

- ❌ **"The routing table is fixed and never changes."**
  Routing tables can change — either manually by an administrator, or automatically through dynamic routing protocols (covered in the next topic), especially in response to network failures or changes.

## 🛠️ Practical Example

Viewing a device's routing table:

**Windows:**
```
route print
```

**Linux/macOS:**
```
ip route
```

Example output (simplified):
```
default via 192.168.1.1 dev eth0
192.168.1.0/24 dev eth0
```

What this means:
- The second line shows a directly connected local network (`192.168.1.0/24`).
- The first line (`default via 192.168.1.1`) is the default route — anything not matching a more specific entry gets sent to the default gateway, `192.168.1.1`.

## 🧪 Quick Check

**1. What is a routing table?**
<details><summary>Answer</summary>A list, stored on a router or other networked device, of known destination networks and the corresponding next step required to reach each one.</details>

**2. What three pieces of information does a typical routing table entry include?**
<details><summary>Answer</summary>The destination network, the next hop (address of the next router), and the interface used to send the data out.</details>

**3. What happens if an incoming destination address doesn't match any specific entry in the routing table?**
<details><summary>Answer</summary>The router falls back to the default route, a catch-all entry that handles anything not matched by a more specific entry.</details>

**4. True or False: A routing table must list every single possible destination address on the internet individually.**
<details><summary>Answer</summary>False. Routing tables rely on the default route to handle unlisted destinations, rather than needing an entry for every possible address.</details>

**5. Do ordinary devices like laptops and phones have routing tables, or only dedicated router hardware?**
<details><summary>Answer</summary>Ordinary devices also maintain a (usually small) routing table of their own, including at least a default route entry.</details>

## 🧠 Remember This

<p align="center"><img src="diagrams/4.svg" alt="diagram"></p>

- A routing table is the reference list a router uses to decide where to forward data.
- Each entry pairs a destination network with a next hop and an outgoing interface.
- Unmatched destinations fall back to the default route.
- Both dedicated routers and ordinary devices maintain their own routing tables.
