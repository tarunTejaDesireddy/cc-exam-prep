# 🕵️ IDS vs 🛡️ IPS — Caveman Style

**Section:** Network Devices &nbsp;·&nbsp; **Topic:** 64a (comparison) &nbsp;·&nbsp; **Level:** 🟢 Beginner

The **one thing you absolutely must remember**:

> 🕵️ **IDS = Detects and alerts**<br>
> 🛡️ **IPS = Detects and blocks**

Think of a cave entrance:

```
🌐 Attacker
    │
    ▼
🪨 Cave
```

### IDS = Watchman 👀

The watchman sees the attacker:

> 🚨 **"GROG! ATTACKER!"**

But he mainly **raises the alarm**.

```
👤 Attacker
    ↓
🕵️ IDS
    ↓
🚨 ALERT
    ↓
👨‍💻 Security Team
```

### IPS = Guard ✋

The guard sees the attacker:

> 🚨 **"BAD GUY!"**

Then **stops him**.

```
👤 Attacker
    ↓
🛡️ IPS
    ↓
❌ BLOCK
```

---

# 🔥 Side-by-Side

| Feature | 🕵️ IDS | 🛡️ IPS |
| --- | --- | --- |
| Full name | Intrusion Detection System | Intrusion Prevention System |
| Detects attacks | ✅ | ✅ |
| Generates alerts | ✅ | ✅ |
| Blocks attacks | ❌ Normally no | ✅ |
| Takes preventive action | ❌ | ✅ |
| Typical placement | Can monitor traffic | Usually inline |
| Main purpose | **Detection** | **Prevention** |
| Memory | 👀 "I see it!" | ✋ "I stop it!" |

---

# 🔌 The Placement Difference

This is a **useful exam clue**.

## 🕵️ IDS

An IDS can monitor traffic **without being directly in the traffic path**.

```
              ┌──→ 🕵️ IDS
              │      ↓
🌐 Traffic ───┴──→ 🖥️ Server
                     ↓
                   🚨 Alert
```

It **observes** what's happening.

## 🛡️ IPS

An IPS is typically **inline**.

Traffic passes through it:

```
🌐 Traffic
    ↓
🛡️ IPS
    ↓
🖥️ Server
```

Why?

Because it needs to be able to:

> **Stop the traffic.**

<p align="center"><img src="diagrams/1.svg" alt="diagram"></p>

---

# 🧠 What Can Both Detect?

Both can detect suspicious activity using techniques such as:

### 📋 Signature-based detection

Looks for **known attack patterns**.

```
Known attack pattern
        ↓
   IDS / IPS
        ↓
     🚨 Detect
```

### 📊 Anomaly-based detection

Looks for **behavior that differs significantly from normal** activity.

```
Normal:   100 requests
Suddenly: 100,000 requests
              ↓
          🚨 Suspicious
```

The difference is what happens **after detection**.

> **IDS → Alert**

> **IPS → Act/block**

---

# 🆚 IDS vs Firewall

Don't confuse these.

### 🧱 Firewall

Uses **configured traffic-control rules**.

> "Allow TCP 443."

> "Block TCP 23."

### 🕵️ IDS

Looks for **suspicious/malicious activity**.

> "This traffic looks like an attack!"

### 🛡️ IPS

Looks for attacks **and can block them**.

> "This traffic looks like an attack — DROP IT!"

---

# 🆚 IPS vs Firewall

An IPS and firewall **can work together**.

```
🌐 Internet
     ↓
🧱 Firewall
     ↓
🛡️ IPS
     ↓
🏢 Internal Network
```

### Firewall

> **"Is this traffic allowed by policy?"**

### IPS

> **"Does this traffic look malicious?"**

---

# 🆚 Firewall vs IDS vs IPS vs WAF

This comparison is **excellent for exams**:

| Technology | Main job |
| --- | --- |
| 🧱 Firewall | Allow/block network traffic according to rules |
| 🕵️ IDS | Detect suspicious activity + alert |
| 🛡️ IPS | Detect suspicious activity + prevent/block |
| 🕸️ WAF | Protect web applications/HTTP(S) traffic |

### Memory:

> 🧱 **Firewall = Gate**

> 🕵️ **IDS = Watchman**

> 🛡️ **IPS = Guard**

> 🕸️ **WAF = Web-app guard**

<p align="center"><img src="diagrams/2.svg" alt="diagram"></p>

---

# 🎯 Exam Questions

### "Detects an attack and sends an alert."

→ 🕵️ **IDS**

### "Detects malicious traffic and drops the packet."

→ 🛡️ **IPS**

### "Monitors network traffic without being inline."

→ 🕵️ **IDS**

### "Must be inline to prevent malicious traffic from reaching the server."

→ 🛡️ **IPS**

### "Protects a web application from malicious HTTP requests."

→ 🕸️ **WAF**

### "Blocks traffic based on source IP, destination IP and port rules."

→ 🧱 **Firewall**

---

# 🧠 The 5-Second Exam Trick

<p align="center"><img src="diagrams/3.svg" alt="diagram"></p>

If the question says **"Detects" / "alerts"** → 🕵️ **IDS**

If it says **"Blocks" / "drops" / "prevents"** → 🛡️ **IPS**

If it says **"HTTP/HTTPS web application"** → 🕸️ **WAF**

If it says **"IP, port, protocol, allow/deny rules"** → 🧱 **Firewall**

---

## 🧪 Quick Check — IDS vs IPS

**1. In one line each: what does an IDS do, and what does an IPS do?**
<details><summary>Answer</summary>IDS detects and alerts. IPS detects and blocks/prevents.</details>

**2. Which one is normally deployed inline, and why?**
<details><summary>Answer</summary>The IPS — traffic has to pass through it for it to be able to stop that traffic.</details>

**3. Both an IDS and an IPS spot the same exploit using the same signature. What is different?**
<details><summary>Answer</summary>What happens after detection: the IDS raises an alert; the IPS drops or blocks the traffic.</details>

**4. "Blocks traffic based on source IP, destination IP and port rules." Firewall, IDS, IPS or WAF?**
<details><summary>Answer</summary>Firewall.</details>

**5. Match each to its caveman role: firewall, IDS, IPS, WAF.**
<details><summary>Answer</summary>Firewall = gate. IDS = watchman. IPS = guard. WAF = web-app guard.</details>

### 🎯 Final memory sentence:

> **IDS sees the bad guy. IPS sees the bad guy and stops him.**
