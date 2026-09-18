# ⚡ UDP

**Section:** Core Network Protocols &nbsp;·&nbsp; **Topic:** 35 of 290 &nbsp;·&nbsp; **Level:** 🟢 Beginner

## 📖 First, a Quick Story

Think about a live TV broadcast. If a single frame of video gets dropped or corrupted somewhere along the way, the broadcaster doesn't stop everything and resend that exact frame — that would ruin the live experience, since by the time it arrived, the moment would already be gone. It's far better to just keep going, accept a tiny, often unnoticeable glitch, and move on to the next frame.

**UDP** takes exactly this approach to sending data — prioritizing speed and simplicity over the careful, guaranteed delivery that [TCP](34-tcp.md) provides.

## 🧠 What Is It?

**UDP (User Datagram Protocol)** is a network protocol that sends data quickly and simply, without establishing a formal connection first, and without guaranteeing that data arrives, arrives in order, or arrives at all.

Where TCP (the previous topic) is built around reliability, UDP is built around speed and low overhead — deliberately skipping the extra steps TCP uses to guarantee delivery.

## 🎯 Why Does It Exist?

Not every type of communication needs, or even benefits from, TCP's careful guarantees. For some applications — live video calls, live audio streaming, some online games — a little bit of imperfect, occasionally missing data is far preferable to the delays that would come from constantly stopping to confirm and resend every single piece.

UDP exists to serve exactly this kind of need: applications that would rather receive data fast, even if a little of it goes missing sometimes, than wait for perfect, guaranteed accuracy at the cost of speed.

## ⚙️ How Does It Work?

<p align="center"><img src="diagrams/1.svg" alt="diagram"></p>

Unlike TCP, UDP:

1. Does **not** establish a connection before sending data (no equivalent of the TCP 3-Way Handshake).
2. Does **not** number or track individual pieces of data for guaranteed ordering.
3. Does **not** wait for acknowledgments, and does **not** automatically resend anything that gets lost.

This makes UDP much simpler and faster than TCP, but it also means that if reliability is actually needed, the *application itself* (not the network protocol) must handle it — for example, by tolerating small gaps, or by building its own lightweight recovery mechanism if truly necessary.

<p align="center"><img src="diagrams/2.svg" alt="diagram"></p>

## 🧩 Important Parts

| Term | Meaning |
|---|---|
| ⚡ UDP | User Datagram Protocol — fast, simple, connectionless data delivery |
| 📦 Datagram | UDP's term for an individual, independent unit of data sent, with no guarantee tied to any other datagram |
| 🔌 Connectionless | Describes UDP's approach of sending data without first setting up a formal connection |
| 🎯 Low overhead | Describes UDP's minimal extra data and processing compared to TCP |

## 💡 Simple Example

Consider a live video call using UDP:

1. One participant's device continuously captures and sends small chunks of audio and video data.
2. If a small chunk of data is lost somewhere along the network, the receiving device simply skips it and continues playing what does arrive.
3. The result might be a very brief, often barely noticeable glitch — but the call continues smoothly in real time, without pausing to recover that lost piece.

<p align="center"><img src="diagrams/3.svg" alt="diagram"></p>

Using TCP for this same live call instead would mean pausing to recover every single lost chunk in order, which — for something happening live, in real time — would actually make the experience noticeably worse, not better.

## 🔍 How It Looks in Real Life

- Live video and voice calls commonly use UDP, prioritizing real-time speed over perfect accuracy.
- Online multiplayer games often use UDP, since a slightly outdated position update is usually less disruptive than a delay waiting for a guaranteed, perfectly ordered one.
- DNS lookups (covered in an upcoming topic) commonly use UDP as well, since a quick lookup that can simply be retried if it fails is often more efficient than the overhead of a full TCP connection for such a small exchange.

## ⚠️ Common Confusion

- ❌ **"UDP is simply a worse, broken version of TCP."**
  UDP isn't broken — it's intentionally designed differently, trading guaranteed reliability for speed and simplicity, which is exactly the right tradeoff for certain types of applications.

- ❌ **"Applications using UDP never handle reliability at all."**
  Some applications built on UDP still implement their own lightweight reliability features at the application level, when they need some (but not all) of what TCP would otherwise provide automatically.

- ❌ **"You should always choose TCP, since it's more reliable."**
  Reliability is not automatically "better" for every situation — for real-time applications, TCP's guarantees can actually introduce delays that are worse for the user experience than UDP's simpler, faster approach.

## 🛠️ Practical Example

Viewing active UDP-based activity (alongside TCP) on a device:

```
netstat -an
```

```
Proto  Local Address        State
UDP    0.0.0.0:53                          
TCP    192.168.1.10:52001   ESTABLISHED
```

What this means:
- The `UDP` line shows a service using UDP (in this case, port 53, commonly associated with DNS, covered in an upcoming topic).
- Notice that UDP entries don't show a "state" like `ESTABLISHED,` since UDP doesn't maintain an ongoing formal connection the way TCP does.

## 🧪 Quick Check

**1. What is the key tradeoff UDP makes compared to TCP?**
<details><summary>Answer</summary>UDP trades guaranteed, ordered delivery for speed and simplicity — it sends data quickly without confirming or guaranteeing it arrives.</details>

**2. Why might a live video call use UDP instead of TCP?**
<details><summary>Answer</summary>Because pausing to recover every lost piece of data (as TCP would do) would introduce delays that are worse for a real-time experience than simply tolerating small, often unnoticeable gaps.</details>

**3. True or False: UDP is simply a broken or inferior version of TCP.**
<details><summary>Answer</summary>False. UDP is intentionally designed for speed and simplicity, which is the better tradeoff for certain types of real-time applications.</details>

**4. Does UDP establish a formal connection before sending data, like TCP does?**
<details><summary>Answer</summary>No. UDP is connectionless — it sends data without first setting up a formal connection.</details>

**5. Give one example of a real-world application that commonly uses UDP.**
<details><summary>Answer</summary>Any of: live video/voice calls, online multiplayer games, or DNS lookups. Any correct example is valid.</details>

## 🧠 Remember This

<p align="center"><img src="diagrams/4.svg" alt="diagram"></p>

- UDP sends data quickly and simply, without guaranteeing delivery, order, or confirmation.
- It is connectionless — no formal setup happens before data is sent.
- UDP suits real-time applications where speed matters more than perfect reliability.
- Choosing TCP vs. UDP depends on whether guaranteed delivery or raw speed matters more for a given application.
