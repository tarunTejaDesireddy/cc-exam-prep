# 🧭 Routing

**Section:** IP Networking &nbsp;·&nbsp; **Topic:** 27 of 290 &nbsp;·&nbsp; **Level:** 🟢 Beginner

## 📖 First, a Quick Story

Imagine planning a road trip between two cities that aren't directly connected by a single highway. You need to pass through several towns along the way, and at each town, you check a map or ask for directions to figure out which road to take next, gradually getting closer to your destination.

**Routing** is this exact process, but for data traveling across a network. At each stop along the way, a router checks where the data needs to go next, and forwards it one step closer to its final destination.

## 🧠 What Is It?

**Routing** is the process of moving data from its source network to its destination network, potentially passing through multiple devices (routers) along the way, each one making a decision about where to forward the data next.

This builds directly on the [Default Gateway](26-default-gateway.md) topic — once a device hands its data off to its default gateway, routing is exactly what happens next: the data continues, router by router, until it reaches its destination network.

## 🎯 Why Does It Exist?

A network like the internet is made up of an enormous number of individual smaller networks (as covered in the [LAN, WAN, and Internet](09-lan-wan-internet.md) topic), most of which are not directly connected to each other. There is no single, direct wire connecting every network in the world to every other network.

Routing exists to solve this. It allows data to travel across multiple, indirectly connected networks by passing through a series of routers, each one making a local decision about the best next step, until the data eventually arrives at its destination — even if the source and destination are on opposite sides of the world and have no direct connection at all.

## ⚙️ How Does It Work?

<p align="center"><img src="diagrams/1.svg" alt="diagram"></p>

Step by step:

1. A device sends data destined for a network outside its own local subnet, forwarding it to its default gateway (a router).
2. That router examines the destination address and consults its own routing information (covered in the next topic, Routing Table) to decide the best next step.
3. The router forwards the data to the next router along that path.
4. This repeats, router by router — sometimes just one hop, sometimes many — until the data reaches a router directly connected to the destination network.
5. That final router delivers the data to the actual destination device.

Each router only needs to know the best *next step*, not the entire end-to-end path in advance. This is similar to asking for directions at each town during a road trip, rather than needing to memorize the entire route from the very start.

What happens if a router along the path fails or a specific path becomes unavailable:

<p align="center"><img src="diagrams/2.svg" alt="diagram"></p>

Well-designed networks often have multiple possible paths between two points, so if one route becomes unavailable, routers can adapt and use an alternate path instead — a concept explored further in the Static vs Dynamic Routing topic.

## 🧩 Important Parts

| Term | Meaning |
|---|---|
| 🧭 Routing | The overall process of moving data across networks toward its destination |
| 📡 Router | A device that makes forwarding decisions at each step |
| 🦘 Hop | One step in a path, from one router to the next |
| 🛣️ Path | The overall sequence of routers a piece of data travels through to reach its destination |

## 💡 Simple Example

Imagine sending data from a home computer to a website hosted on a server in another country:

1. The home computer sends the data to its home router (its default gateway).
2. The home router forwards it to a router at the internet service provider (ISP).
3. The ISP's router forwards it further, to other routers operated by larger internet backbone providers.
4. Eventually, the data reaches a router close to the destination website's server.
5. That final router delivers the data directly to the server.

<p align="center"><img src="diagrams/3.svg" alt="diagram"></p>

The home computer doesn't need to know this entire chain of routers in advance — it only needs to know its own default gateway. Each router along the way handles its own small part of the journey.

## 🔍 How It Looks in Real Life

- Every time you visit a website, your data is routed across potentially dozens of routers before reaching the destination server.
- Tools like `traceroute` (covered in a later topic) let you actually see the sequence of routers your data passes through to reach a given destination.
- Large organizations, like internet service providers, operate massive numbers of routers specifically to keep global routing working smoothly.

## ⚠️ Common Confusion

- ❌ **"Routing means data always takes the same fixed path every time."**
  The specific path data takes can vary, sometimes even between individual messages sent to the same destination, depending on current network conditions, congestion, or failures along different possible paths.

- ❌ **"A router needs to know the complete path to every possible destination in the world."**
  A router only needs to know the best *next step* for a given destination, not the entire end-to-end journey. This distributed decision-making, hop by hop, is what makes large-scale routing across the internet possible at all.

- ❌ **"Routing only happens on the internet."**
  Routing also happens within a single large organization's internal network, whenever data needs to move between different subnets, even without ever touching the public internet.

## 🛠️ Practical Example

The `traceroute` (or `tracert` on Windows) tool shows the actual sequence of routers data passes through:

```
tracert example.com
```
```
1  192.168.1.1
2  10.20.30.1
3  198.51.100.1
4  203.0.113.10
5  example.com [203.0.113.45]
```

What this means:
- Each numbered line represents one router (one "hop") that the data passed through.
- The final line shows the data arriving at its destination — this tool provides a direct, visible demonstration of routing in action.

## 🧪 Quick Check

**1. What is routing?**
<details><summary>Answer</summary>The process of moving data from its source network to its destination network, passing through a series of routers that each forward it one step closer to its destination.</details>

**2. Does a router need to know the entire path from source to destination in advance?**
<details><summary>Answer</summary>No. A router only needs to know the best next step for a given destination; the overall journey happens through many routers each making their own local decision.</details>

**3. What is a "hop" in the context of routing?**
<details><summary>Answer</summary>One step in a path, from one router to the next.</details>

**4. True or False: Data traveling to the same destination will always take the exact same path every single time.**
<details><summary>Answer</summary>False. The path can vary depending on network conditions, congestion, or failures, especially if multiple possible paths exist.</details>

**5. Does routing only happen on the public internet, or can it also happen within a single organization's internal network?**
<details><summary>Answer</summary>It can also happen entirely within a single organization's internal network, whenever data needs to move between different internal subnets.</details>

## 🧠 Remember This

<p align="center"><img src="diagrams/4.svg" alt="diagram"></p>

- Routing moves data across multiple networks, hop by hop, toward its destination.
- Each router only decides the best next step, not the entire end-to-end path.
- The exact path data takes can vary based on network conditions.
- Routing happens both across the public internet and within internal organizational networks.
